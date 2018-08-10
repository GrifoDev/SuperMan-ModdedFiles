.class public Lcom/samsung/android/transcode/core/EncodeVideo;
.super Lcom/samsung/android/transcode/core/Encode;
.source "EncodeVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;,
        Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;
    }
.end annotation


# static fields
.field private static final IMAGE_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static final KEY_ERROR_TYPE:Ljava/lang/String; = "error-type"

.field private static final REWRITE_AUDIO_BUFFER_SIZE:I = 0x20000

.field public static final SLOW_MOTION_DATA:Ljava/lang/String; = "SlowMotion_Data"

.field public static final SUPER_SLOW_MOTION_DATA:Ljava/lang/String; = "Super_SlowMotion_Data"

.field private static final TIMEOUT_USEC:J = 0x2710L

.field private static final VIDEO_FPS_BUF_COUNT:I = 0x5

.field private static mUseUri:Z


# instance fields
.field private NumOfSVCLayers:I

.field private RegionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/transcode/core/Encode$Region;",
            ">;"
        }
    .end annotation
.end field

.field private SEFData:Ljava/lang/String;

.field private formatupdated:Z

.field private mAudioExtractor:Landroid/media/MediaExtractor;

.field private mContext:Landroid/content/Context;

.field private mCopyAudio:Z

.field private volatile mEncoding:Z

.field private mInputFilePath:Ljava/lang/String;

.field private mInputOrientationDegrees:I

.field private mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

.field private mInputUri:Landroid/net/Uri;

.field private mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

.field private mMainRegion:Ljava/lang/String;

.field private mModifiedAudiotime:J

.field private mModifiedVideotime:J

.field private mOriginTrimEndUs:J

.field private mOriginTrimStartUs:J

.field private mOriginalduration:J

.field private mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

.field private mRecordingMode:I

.field private mSEFVideo:Z

.field private mStopLock:Ljava/lang/Object;

.field private mTrimAudioEndUs:J

.field private mTrimAudioStartUs:J

.field private mTrimVideoEndUs:J

.field private mTrimVideoStartUs:J

.field private mVideoExtractor:Landroid/media/MediaExtractor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    return-void
.end method

.method private CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    sget-boolean v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_4

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getRecordingMode(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    iput-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->SEFData:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->extractSEFData(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->SEFData:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->SEFData:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->SEFData:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->slowfastSEFParser(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_a

    :goto_2
    if-nez v0, :cond_b

    :goto_3
    return v0

    :cond_1
    if-nez p2, :cond_3

    :cond_2
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "uri or context  is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    if-eqz p3, :cond_2

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "filepath is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Normal Video File"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "extractSEFData : SEFData == null, createDefaultRegion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->createDefaultRegion(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->SEFData:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->superslowSEFParser(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_9
    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_8

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_b
    iput-boolean v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    goto :goto_3
.end method

.method private CheckVideoCodec(IILandroid/content/Context;Landroid/net/Uri;Z)Z
    .locals 14

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p5, :cond_3

    :goto_0
    const/4 v9, 0x0

    :try_start_0
    invoke-static/range {p3 .. p4}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {v9}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v10

    if-ltz v10, :cond_6

    invoke-virtual {v9, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    const-string/jumbo v12, "width"

    invoke-virtual {v8, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "height"

    invoke-virtual {v8, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v12, "error-type"

    invoke-virtual {v8, v12}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_7

    :goto_1
    if-nez v9, :cond_8

    :cond_0
    :goto_2
    const/4 v9, 0x0

    if-nez v6, :cond_a

    if-eqz p5, :cond_b

    :cond_1
    if-gtz v11, :cond_c

    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Resolution Error appear : width = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", height= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "TranscodeLib"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return v12

    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->GetCodecResource(II)I

    move-result v2

    goto :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v12, "TranscodeLib"

    const-string/jumbo v13, "Can\'t create Extractor"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-nez v9, :cond_5

    :goto_3
    const/4 v9, 0x0

    const/4 v12, 0x0

    return v12

    :cond_5
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :cond_6
    move v6, v10

    :try_start_2
    const-string/jumbo v12, "TranscodeLib"

    const-string/jumbo v13, "Can\'t get VideoTrack"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :cond_7
    :try_start_4
    const-string/jumbo v12, "error-type"

    invoke-virtual {v8, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    goto :goto_1

    :cond_8
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_5
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catch_2
    move-exception v4

    :try_start_6
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catchall_0
    move-exception v1

    if-nez v9, :cond_9

    :goto_4
    const/4 v9, 0x0

    throw v1

    :cond_9
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Extactor Error appear : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "TranscodeLib"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return v12

    :cond_b
    if-ltz v2, :cond_1

    mul-int v12, v11, v7

    if-ge v2, v12, :cond_1

    const-string/jumbo v12, "TranscodeLib"

    const-string/jumbo v13, "Codec resource is not enough"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return v12

    :cond_c
    if-lez v7, :cond_2

    const/4 v12, 0x1

    return v12
.end method

.method private CheckVideoCodec(IILjava/lang/String;Z)Z
    .locals 14

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz p4, :cond_3

    :goto_0
    const/4 v9, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-static {v9}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v10

    if-ltz v10, :cond_6

    invoke-virtual {v9, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    const-string/jumbo v12, "width"

    invoke-virtual {v8, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "height"

    invoke-virtual {v8, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v12, "error-type"

    invoke-virtual {v8, v12}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_7

    :goto_1
    if-nez v9, :cond_8

    :cond_0
    :goto_2
    const/4 v9, 0x0

    if-nez v6, :cond_a

    if-eqz p4, :cond_b

    :cond_1
    if-gtz v11, :cond_c

    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Resolution Error appear : width = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", height= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "TranscodeLib"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return v12

    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->GetCodecResource(II)I

    move-result v2

    goto :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v12, "TranscodeLib"

    const-string/jumbo v13, "Can\'t create Extractor"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    if-nez v9, :cond_5

    :goto_3
    const/4 v9, 0x0

    const/4 v12, 0x0

    return v12

    :cond_5
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :cond_6
    move v6, v10

    :try_start_2
    const-string/jumbo v12, "TranscodeLib"

    const-string/jumbo v13, "Can\'t get VideoTrack"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :cond_7
    :try_start_4
    const-string/jumbo v12, "error-type"

    invoke-virtual {v8, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    goto :goto_1

    :cond_8
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_5
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catch_2
    move-exception v4

    :try_start_6
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catchall_0
    move-exception v1

    if-nez v9, :cond_9

    :goto_4
    const/4 v9, 0x0

    throw v1

    :cond_9
    invoke-virtual {v9}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Extactor Error appear : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "TranscodeLib"

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return v12

    :cond_b
    if-ltz v2, :cond_1

    mul-int v12, v11, v7

    if-ge v2, v12, :cond_1

    const-string/jumbo v12, "TranscodeLib"

    const-string/jumbo v13, "Codec resource is not enough"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    return v12

    :cond_c
    if-lez v7, :cond_2

    const/4 v12, 0x1

    return v12
.end method

.method private CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    :cond_0
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Video Format is not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_0
    if-nez v3, :cond_3

    :goto_1
    const/4 v3, 0x0

    if-nez v4, :cond_4

    :cond_1
    :goto_2
    const/4 v4, 0x0

    return v5

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    if-nez v3, :cond_5

    :goto_3
    const/4 v3, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-nez v3, :cond_6

    :goto_4
    const/4 v3, 0x0

    if-nez v4, :cond_7

    :goto_5
    const/4 v4, 0x0

    throw v0

    :cond_6
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_5
.end method

.method private CheckVideoFormat(Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v3

    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v4

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    :cond_0
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Video Format is not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_0
    if-nez v3, :cond_3

    :goto_1
    const/4 v3, 0x0

    if-nez v4, :cond_4

    :cond_1
    :goto_2
    const/4 v4, 0x0

    return v5

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x0

    if-nez v3, :cond_5

    :goto_3
    const/4 v3, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-nez v3, :cond_6

    :goto_4
    const/4 v3, 0x0

    if-nez v4, :cond_7

    :goto_5
    const/4 v4, 0x0

    throw v0

    :cond_6
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_5
.end method

.method private ProcSVCLayerDrop(JIIII)Z
    .locals 23

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    sget-object v6, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/high16 v12, 0x3f800000    # 1.0f

    move-wide/from16 v8, p1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-nez v13, :cond_3

    :cond_0
    :goto_0
    const/4 v13, 0x1

    move/from16 v0, p5

    if-eq v0, v13, :cond_1f

    :cond_1
    :goto_1
    const/4 v13, 0x2

    move/from16 v0, p5

    if-eq v0, v13, :cond_30

    :cond_2
    :goto_2
    return v7

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v2, v13, :cond_4

    :goto_4
    add-long v14, v8, v10

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v13}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v13}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_6

    const/4 v3, 0x1

    const/4 v4, 0x0

    :cond_6
    const/4 v13, 0x1

    move/from16 v0, p5

    if-eq v0, v13, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    cmp-long v13, p1, v14

    if-gez v13, :cond_11

    const/4 v13, 0x1

    :goto_5
    if-nez v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    cmp-long v13, p1, v14

    if-ltz v13, :cond_12

    const/4 v13, 0x1

    :goto_6
    if-nez v13, :cond_1b

    const/4 v13, 0x2

    move/from16 v0, p5

    if-eq v0, v13, :cond_13

    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v6, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    sub-long v16, p1, v16

    const v13, 0x49742400    # 1000000.0f

    mul-float/2addr v13, v12

    float-to-long v0, v13

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    add-long v8, v14, v16

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    cmp-long v13, p1, v14

    if-ltz v13, :cond_b

    const/4 v13, 0x1

    :goto_8
    if-nez v13, :cond_7

    if-eqz p6, :cond_c

    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    sub-long v14, v14, p1

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff7333333333333L    # 1.45

    div-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v18, v20, v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_d

    const/4 v13, 0x1

    :goto_a
    if-nez v13, :cond_a

    const/4 v13, 0x1

    move/from16 v0, p3

    if-eq v0, v13, :cond_e

    const/4 v13, 0x2

    move/from16 v0, p3

    if-eq v0, v13, :cond_f

    :cond_a
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_b
    const/4 v13, 0x0

    goto :goto_8

    :cond_c
    const/16 p6, 0xf0

    goto :goto_9

    :cond_d
    const/4 v13, 0x0

    goto :goto_a

    :cond_e
    const/4 v5, 0x1

    goto :goto_b

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    sub-long v14, v14, p1

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff7333333333333L    # 1.45

    div-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_10

    const/4 v13, 0x1

    :goto_c
    if-nez v13, :cond_a

    const/4 v5, 0x1

    goto :goto_b

    :cond_10
    const/4 v13, 0x0

    goto :goto_c

    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_13
    if-eqz p6, :cond_16

    :goto_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    sub-long v14, v14, p1

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_17

    const/4 v13, 0x1

    :goto_e
    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    sub-long v14, v14, p1

    long-to-double v14, v14

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff7333333333333L    # 1.45

    div-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v18, v20, v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x402c000000000000L    # 14.0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    cmpg-double v13, v14, v16

    if-gez v13, :cond_8

    const/4 v13, 0x1

    move/from16 v0, p3

    if-eq v0, v13, :cond_18

    const/4 v13, 0x2

    move/from16 v0, p3

    if-eq v0, v13, :cond_19

    :cond_14
    const/4 v13, 0x3

    move/from16 v0, p3

    if-eq v0, v13, :cond_1a

    :cond_15
    const/4 v13, 0x4

    move/from16 v0, p3

    if-ne v0, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    sub-long v14, v14, p1

    long-to-double v14, v14

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff7333333333333L    # 1.45

    div-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    cmpg-double v13, v14, v16

    if-gez v13, :cond_8

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_16
    const/16 p6, 0x1e

    goto/16 :goto_d

    :cond_17
    const/4 v13, 0x0

    goto/16 :goto_e

    :cond_18
    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    sub-long v14, v14, p1

    long-to-double v14, v14

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff7333333333333L    # 1.45

    div-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v18, v20, v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4018000000000000L    # 6.0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    cmpg-double v13, v14, v16

    if-gez v13, :cond_14

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    sub-long v14, v14, p1

    long-to-double v14, v14

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff7333333333333L    # 1.45

    div-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v18, v20, v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    cmpg-double v13, v14, v16

    if-gez v13, :cond_15

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    cmp-long v13, p1, v14

    if-gez v13, :cond_1c

    const/4 v13, 0x1

    :goto_f
    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v6, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v12

    const/4 v13, 0x1

    move/from16 v0, p5

    if-eq v0, v13, :cond_1d

    const/4 v13, 0x2

    move/from16 v0, p5

    if-eq v0, v13, :cond_1e

    :goto_10
    sget-object v6, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    goto/16 :goto_b

    :cond_1c
    const/4 v13, 0x0

    goto :goto_f

    :cond_1d
    long-to-double v14, v10

    float-to-double v0, v12

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v0, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int v13, v18, v13

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-long v10, v14

    goto :goto_10

    :cond_1e
    long-to-double v14, v10

    float-to-double v0, v12

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v0, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int v13, v18, v13

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    double-to-long v10, v14

    goto :goto_10

    :cond_1f
    const/4 v13, 0x1

    if-ne v4, v13, :cond_1

    const/16 v13, 0xe6

    move/from16 v0, p6

    if-ge v0, v13, :cond_22

    const/16 v13, 0x6e

    move/from16 v0, p6

    if-ge v0, v13, :cond_25

    :cond_20
    :goto_11
    const/16 v13, 0xe6

    move/from16 v0, p6

    if-ge v0, v13, :cond_28

    const/16 v13, 0x6e

    move/from16 v0, p6

    if-ge v0, v13, :cond_2d

    :cond_21
    :goto_12
    :pswitch_0
    const/4 v13, 0x1

    if-ne v5, v13, :cond_1

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_22
    if-lez p3, :cond_20

    add-int/lit8 v13, p4, -0x3

    move/from16 v0, p3

    if-ne v0, v13, :cond_24

    :cond_23
    const/4 v7, 0x1

    goto :goto_11

    :cond_24
    add-int/lit8 v13, p4, -0x2

    move/from16 v0, p3

    if-eq v0, v13, :cond_23

    add-int/lit8 v13, p4, -0x1

    move/from16 v0, p3

    if-eq v0, v13, :cond_23

    goto :goto_11

    :cond_25
    if-lez p3, :cond_20

    add-int/lit8 v13, p4, -0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_27

    :cond_26
    const/4 v7, 0x1

    goto :goto_11

    :cond_27
    add-int/lit8 v13, p4, -0x1

    move/from16 v0, p3

    if-eq v0, v13, :cond_26

    goto :goto_11

    :cond_28
    sget-object v13, Lcom/samsung/android/transcode/core/EncodeVideo$2;->$SwitchMap$com$samsung$android$transcode$core$Encode$Speed:[I

    invoke-virtual {v6}, Lcom/samsung/android/transcode/core/Encode$Speed;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    const-string/jumbo v13, "TranscodeLib"

    const-string/jumbo v14, "ProcSVCLayerDrop Should not be here!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :pswitch_1
    add-int/lit8 v13, p4, -0x3

    move/from16 v0, p3

    if-ne v0, v13, :cond_21

    const/4 v7, 0x0

    goto :goto_12

    :pswitch_2
    add-int/lit8 v13, p4, -0x3

    move/from16 v0, p3

    if-ne v0, v13, :cond_2a

    :cond_29
    const/4 v7, 0x0

    goto :goto_12

    :cond_2a
    add-int/lit8 v13, p4, -0x2

    move/from16 v0, p3

    if-eq v0, v13, :cond_29

    goto :goto_12

    :pswitch_3
    add-int/lit8 v13, p4, -0x3

    move/from16 v0, p3

    if-ne v0, v13, :cond_2c

    :cond_2b
    const/4 v7, 0x0

    goto :goto_12

    :cond_2c
    add-int/lit8 v13, p4, -0x2

    move/from16 v0, p3

    if-eq v0, v13, :cond_2b

    add-int/lit8 v13, p4, -0x1

    move/from16 v0, p3

    if-eq v0, v13, :cond_2b

    goto :goto_12

    :cond_2d
    sget-object v13, Lcom/samsung/android/transcode/core/EncodeVideo$2;->$SwitchMap$com$samsung$android$transcode$core$Encode$Speed:[I

    invoke-virtual {v6}, Lcom/samsung/android/transcode/core/Encode$Speed;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_1

    const-string/jumbo v13, "TranscodeLib"

    const-string/jumbo v14, "ProcSVCLayerDrop Should not be here!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_4
    add-int/lit8 v13, p4, -0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_21

    const/4 v7, 0x0

    goto/16 :goto_12

    :pswitch_5
    add-int/lit8 v13, p4, -0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_2f

    :cond_2e
    const/4 v7, 0x0

    goto/16 :goto_12

    :cond_2f
    add-int/lit8 v13, p4, -0x1

    move/from16 v0, p3

    if-eq v0, v13, :cond_2e

    goto/16 :goto_12

    :cond_30
    const/4 v13, 0x1

    if-ne v3, v13, :cond_2

    sget-object v13, Lcom/samsung/android/transcode/core/EncodeVideo$2;->$SwitchMap$com$samsung$android$transcode$core$Encode$Speed:[I

    invoke-virtual {v6}, Lcom/samsung/android/transcode/core/Encode$Speed;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_2

    :pswitch_6
    const-string/jumbo v13, "TranscodeLib"

    const-string/jumbo v14, "ProcSVCLayerDrop Should not be here!!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_13
    :pswitch_7
    const/4 v13, 0x1

    if-ne v5, v13, :cond_2

    const/4 v7, 0x0

    goto/16 :goto_2

    :pswitch_8
    add-int/lit8 v13, p4, -0x1

    move/from16 v0, p3

    if-ne v0, v13, :cond_31

    const/4 v7, 0x1

    goto :goto_13

    :pswitch_9
    add-int/lit8 v13, p4, -0x2

    move/from16 v0, p3

    if-ne v0, v13, :cond_33

    :cond_32
    const/4 v7, 0x1

    goto :goto_13

    :cond_33
    add-int/lit8 v13, p4, -0x1

    move/from16 v0, p3

    if-eq v0, v13, :cond_32

    goto :goto_13

    :pswitch_a
    add-int/lit8 v13, p4, -0x3

    move/from16 v0, p3

    if-ne v0, v13, :cond_35

    :cond_34
    const/4 v7, 0x1

    goto :goto_13

    :cond_35
    add-int/lit8 v13, p4, -0x2

    move/from16 v0, p3

    if-eq v0, v13, :cond_34

    add-int/lit8 v13, p4, -0x1

    move/from16 v0, p3

    if-eq v0, v13, :cond_34

    goto :goto_13

    :pswitch_b
    add-int/lit8 v13, p4, -0x4

    move/from16 v0, p3

    if-ne v0, v13, :cond_37

    :cond_36
    const/4 v7, 0x1

    goto :goto_13

    :cond_37
    add-int/lit8 v13, p4, -0x3

    move/from16 v0, p3

    if-eq v0, v13, :cond_36

    add-int/lit8 v13, p4, -0x2

    move/from16 v0, p3

    if-eq v0, v13, :cond_36

    add-int/lit8 v13, p4, -0x1

    move/from16 v0, p3

    if-eq v0, v13, :cond_36

    goto :goto_13

    :pswitch_c
    add-int/lit8 v13, p4, -0x5

    move/from16 v0, p3

    if-ne v0, v13, :cond_39

    :cond_38
    const/4 v7, 0x1

    goto :goto_13

    :cond_39
    add-int/lit8 v13, p4, -0x4

    move/from16 v0, p3

    if-eq v0, v13, :cond_38

    add-int/lit8 v13, p4, -0x3

    move/from16 v0, p3

    if-eq v0, v13, :cond_38

    add-int/lit8 v13, p4, -0x2

    move/from16 v0, p3

    if-eq v0, v13, :cond_38

    add-int/lit8 v13, p4, -0x1

    move/from16 v0, p3

    if-eq v0, v13, :cond_38

    goto :goto_13

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    return p1
.end method

.method public static checkRewritable(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 17

    const/4 v11, -0x1

    if-nez p1, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid file uri: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "TranscodeLib"

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x1

    :goto_0
    return v11

    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :try_start_0
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Number of tracks: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v13

    const/4 v15, -0x1

    if-eq v13, v15, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v7, v13}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v14

    const-string/jumbo v15, "mime"

    invoke-virtual {v14, v15}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v15, "video/avc"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_2
    const/4 v5, 0x1

    :goto_2
    invoke-static {v7}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v12

    const/4 v15, -0x1

    if-eq v12, v15, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v7, v12}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string/jumbo v15, "mime"

    invoke-virtual {v1, v15}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v15, "audio/mp4a-latm"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_3
    const/4 v4, 0x1

    :goto_3
    if-nez v3, :cond_8

    const/4 v11, -0x1

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-string/jumbo v15, "TranscodeLib"

    const-string/jumbo v16, "Valid video track absent"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const-string/jumbo v15, "video/mp4v-es"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string/jumbo v15, "video/3gpp"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string/jumbo v15, "video/hevc"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string/jumbo v15, "TranscodeLib"

    const-string/jumbo v16, "Unsupported mime type: video"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string/jumbo v15, "TranscodeLib"

    const-string/jumbo v16, "Valid audio track absent"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    const-string/jumbo v15, "audio/3gpp"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string/jumbo v15, "audio/amr-wb"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string/jumbo v15, "TranscodeLib"

    const-string/jumbo v16, "Unsuppported mime type: audio"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    if-nez v5, :cond_9

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_9
    if-nez v2, :cond_a

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public static checkRewritable(Ljava/lang/String;)I
    .locals 17

    const/4 v11, -0x1

    if-nez p0, :cond_0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Invalid file path: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "TranscodeLib"

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, -0x1

    :goto_0
    return v11

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Number of tracks: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v13

    const/4 v15, -0x1

    if-eq v13, v15, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v7, v13}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v14

    const-string/jumbo v15, "mime"

    invoke-virtual {v14, v15}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v15, "video/avc"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_2
    const/4 v5, 0x1

    :goto_2
    invoke-static {v7}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v12

    const/4 v15, -0x1

    if-eq v12, v15, :cond_6

    const/4 v2, 0x1

    invoke-virtual {v7, v12}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string/jumbo v15, "mime"

    invoke-virtual {v1, v15}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v15, "audio/mp4a-latm"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_3
    const/4 v4, 0x1

    :goto_3
    if-nez v3, :cond_8

    const/4 v11, -0x1

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-string/jumbo v15, "TranscodeLib"

    const-string/jumbo v16, "Valid video track absent"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const-string/jumbo v15, "video/mp4v-es"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string/jumbo v15, "video/3gpp"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string/jumbo v15, "video/hevc"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string/jumbo v15, "TranscodeLib"

    const-string/jumbo v16, "Unsupported mime type: video"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string/jumbo v15, "TranscodeLib"

    const-string/jumbo v16, "Valid audio track absent"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    const-string/jumbo v15, "audio/3gpp"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string/jumbo v15, "audio/amr-wb"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string/jumbo v15, "TranscodeLib"

    const-string/jumbo v16, "Unsuppported mime type: audio"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    if-nez v5, :cond_9

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_9
    if-nez v2, :cond_a

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private checkSilentRegion(J)I
    .locals 9

    const-wide/16 v6, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkSilentRegion  TimeUs:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "TranscodeLib"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v1, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    int-to-long v4, v1

    mul-long/2addr v4, v6

    cmp-long v1, p1, v4

    if-gez v1, :cond_3

    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v1, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v4, v1

    mul-long/2addr v4, v6

    cmp-long v1, p1, v4

    if-lez v1, :cond_4

    move v1, v2

    :goto_2
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v1, v1, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    const/16 v4, 0x9

    if-eq v1, v4, :cond_5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkSilentRegion_SuperSlow Cancel Region:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TranscodeLib"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private createDefaultRegion(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 14

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    sget-boolean v9, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v9, :cond_0

    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v6

    :goto_0
    invoke-static {v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    const-string/jumbo v9, "durationUs"

    invoke-virtual {v5, v9}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    if-nez v6, :cond_1

    :goto_1
    const/4 v6, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "createDefaultRegion duration:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "TranscodeLib"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_4

    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_5

    const/4 v9, 0x0

    return v9

    :cond_0
    :try_start_1
    invoke-static/range {p2 .. p3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    if-nez v6, :cond_2

    :goto_3
    const/4 v6, 0x0

    const/4 v9, 0x0

    return v9

    :cond_2
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :catchall_0
    move-exception v1

    if-nez v6, :cond_3

    :goto_4
    const/4 v6, 0x0

    throw v1

    :cond_3
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    new-instance v7, Lcom/samsung/android/transcode/core/Encode$Region;

    invoke-direct {v7}, Lcom/samsung/android/transcode/core/Encode$Region;-><init>()V

    const-wide/16 v10, 0x2

    mul-long/2addr v10, v2

    const-wide/16 v12, 0x2710

    div-long/2addr v10, v12

    long-to-int v9, v10

    iput v9, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v2

    const-wide/16 v12, 0x2710

    div-long/2addr v10, v12

    long-to-int v9, v10

    iput v9, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    iget v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    iget v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_7

    :goto_5
    iget v9, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    invoke-static {v9}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSpeed(I)Lcom/samsung/android/transcode/core/Encode$Speed;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    iget-object v9, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    return v9

    :cond_6
    const/4 v9, 0x4

    iput v9, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    goto :goto_5

    :cond_7
    const/4 v9, 0x7

    iput v9, v7, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    goto :goto_5
.end method

.method private extractSEFData(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    sget-boolean v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v4, :cond_0

    if-eqz p1, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/media/SemExtendedFormat;->isValidFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_3

    return-object v6

    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "uri is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "filepath is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_3
    :try_start_1
    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    :cond_4
    const-string/jumbo v4, "SlowMotion_Data"

    invoke-static {v2, v4}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    :goto_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    return-object v3

    :cond_5
    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_7

    :cond_6
    const-string/jumbo v4, "Super_SlowMotion_Data"

    invoke-static {v2, v4}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_7
    iget v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x7

    if-eq v4, v5, :cond_6

    return-object v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v6
.end method

.method public static findAtom(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v23, 0x0

    new-instance v15, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v12, v0, [B

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v9, v0, [B

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v20

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "file size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v25, "mdia"

    const/16 v26, 0x0

    aput-object v25, v22, v26

    const-string/jumbo v25, "minf"

    const/16 v26, 0x1

    aput-object v25, v22, v26

    const-string/jumbo v25, "moov"

    const/16 v26, 0x2

    aput-object v25, v22, v26

    const-string/jumbo v25, "stbl"

    const/16 v26, 0x3

    aput-object v25, v22, v26

    const-string/jumbo v25, "trak"

    const/16 v26, 0x4

    aput-object v25, v22, v26

    const/16 v16, 0x0

    :try_start_0
    new-instance v17, Ljava/io/RandomAccessFile;

    const-string/jumbo v25, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v18, 0x0

    :goto_0
    cmp-long v25, v18, v20

    if-ltz v25, :cond_0

    const/16 v25, 0x1

    :goto_1
    if-nez v25, :cond_3

    :try_start_1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "filePointer: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v19}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    array-length v0, v12

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v12}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v10

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Atom Size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    array-length v0, v9

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Atom Box: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, v22

    invoke-static {v0, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v24

    if-gez v24, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    const-wide/16 v26, 0x1

    cmp-long v25, v10, v26

    if-nez v25, :cond_4

    const-wide/16 v26, 0x8

    add-long v26, v26, v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v25, 0x8

    move/from16 v0, v25

    new-array v5, v0, [B

    array-length v0, v5

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v13}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    add-long v18, v18, v6

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "64bit: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    move-object/from16 v16, v17

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    throw v4

    :cond_0
    const/16 v25, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v14

    :try_start_3
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Found parent: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " move to position: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-wide/16 v26, 0x8

    add-long v18, v18, v26

    goto/16 :goto_0

    :cond_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Found: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v23, 0x1

    :cond_3
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V

    return v23

    :cond_4
    const-wide/16 v26, 0x0

    cmp-long v25, v10, v26

    if-nez v25, :cond_5

    :try_start_4
    const-string/jumbo v25, "filePointer does not go forward. Exit."

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v23, 0x0

    goto :goto_4

    :cond_5
    add-long v18, v18, v10

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "move: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " atomsize "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    goto/16 :goto_3
.end method

.method public static findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v23, 0x0

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v12, v0, [B

    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v9, v0, [B

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v20

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "file size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v25, 0x5

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v25, "mdia"

    const/16 v26, 0x0

    aput-object v25, v22, v26

    const-string/jumbo v25, "minf"

    const/16 v26, 0x1

    aput-object v25, v22, v26

    const-string/jumbo v25, "moov"

    const/16 v26, 0x2

    aput-object v25, v22, v26

    const-string/jumbo v25, "stbl"

    const/16 v26, 0x3

    aput-object v25, v22, v26

    const-string/jumbo v25, "trak"

    const/16 v26, 0x4

    aput-object v25, v22, v26

    const/16 v16, 0x0

    :try_start_0
    new-instance v17, Ljava/io/RandomAccessFile;

    const-string/jumbo v25, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v15, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v18, 0x0

    :goto_0
    cmp-long v25, v18, v20

    if-ltz v25, :cond_0

    const/16 v25, 0x1

    :goto_1
    if-nez v25, :cond_3

    :try_start_1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "filePointer: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v19}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    array-length v0, v12

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v12, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v12}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v10

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Atom Size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    array-length v0, v9

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v9, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Atom Box: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, v22

    invoke-static {v0, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v24

    if-gez v24, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    const-wide/16 v26, 0x1

    cmp-long v25, v10, v26

    if-nez v25, :cond_4

    const-wide/16 v26, 0x8

    add-long v26, v26, v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v25, 0x8

    move/from16 v0, v25

    new-array v5, v0, [B

    array-length v0, v5

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v13}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    add-long v18, v18, v6

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "64bit: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    move-object/from16 v16, v17

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    throw v4

    :cond_0
    const/16 v25, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v14

    :try_start_3
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Found parent: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " move to position: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-wide/16 v26, 0x8

    add-long v18, v18, v26

    goto/16 :goto_0

    :cond_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Found: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v23, 0x1

    :cond_3
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V

    return v23

    :cond_4
    const-wide/16 v26, 0x0

    cmp-long v25, v10, v26

    if-nez v25, :cond_5

    :try_start_4
    const-string/jumbo v25, "filePointer does not go forward. Exit."

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v23, 0x0

    goto :goto_4

    :cond_5
    add-long v18, v18, v10

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "move: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " atomsize "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    goto/16 :goto_3
.end method

.method private getAudioDrop(JI)Z
    .locals 17

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    sget-object v3, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/high16 v8, 0x3f800000    # 1.0f

    move-wide/from16 v4, p1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->isSEFRegion(JI)Z

    move-result v9

    return v9

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_3

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v9, p1, v10

    if-gez v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v9, p1, v10

    if-ltz v9, :cond_6

    const/4 v9, 0x1

    :goto_3
    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v3, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v12, v9

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long v12, p1, v12

    const v9, 0x49742400    # 1000000.0f

    mul-float/2addr v9, v8

    float-to-long v14, v9

    mul-long/2addr v12, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    add-long v4, v10, v12

    goto/16 :goto_0

    :cond_3
    const/4 v9, 0x2

    move/from16 v0, p3

    if-eq v0, v9, :cond_2

    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v2, v9, :cond_c

    :cond_4
    cmp-long v9, p1, v6

    if-ltz v9, :cond_f

    const/4 v9, 0x1

    :goto_5
    if-nez v9, :cond_10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[getAudioDrop]SampleTime error tempSampleTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",timeDelta :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "TranscodeLib"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v9, p1, v10

    if-gez v9, :cond_9

    const/4 v9, 0x1

    :goto_6
    if-nez v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v3, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v8

    const/4 v9, 0x1

    move/from16 v0, p3

    if-eq v0, v9, :cond_a

    const/4 v9, 0x2

    move/from16 v0, p3

    if-eq v0, v9, :cond_b

    :cond_8
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v9, 0x0

    goto :goto_6

    :cond_a
    long-to-double v10, v6

    float-to-double v12, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v14, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int v9, v14, v9

    int-to-double v14, v9

    mul-double/2addr v12, v14

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-long v6, v10

    goto :goto_7

    :cond_b
    long-to-double v10, v6

    float-to-double v12, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v12, v14, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v14, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int v9, v14, v9

    int-to-double v14, v9

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-long v6, v10

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v9, p1, v10

    if-gtz v9, :cond_d

    const/4 v9, 0x1

    :goto_8
    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    const/16 v10, 0x9

    if-eq v9, v10, :cond_e

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_d
    const/4 v9, 0x0

    goto :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v10, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    sub-int v9, v10, v9

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v6, v10

    goto :goto_9

    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_10
    sub-long v4, p1, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[getAudioDrop]SampleTime new tempSampleTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",timeDelta :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "TranscodeLib"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getAudioTime(JI)V
    .locals 17

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    sget-object v3, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/high16 v8, 0x3f800000    # 1.0f

    move-wide/from16 v4, p1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    move/from16 v0, p3

    if-ne v0, v9, :cond_3

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v2, v9, :cond_5

    :goto_2
    add-long v10, v4, v6

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    goto :goto_0

    :cond_3
    const/4 v9, 0x2

    move/from16 v0, p3

    if-eq v0, v9, :cond_2

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lt v2, v9, :cond_d

    :cond_4
    sub-long v10, p1, v6

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v9, p1, v10

    if-gez v9, :cond_6

    const/4 v9, 0x1

    :goto_4
    if-nez v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v9, p1, v10

    if-ltz v9, :cond_7

    const/4 v9, 0x1

    :goto_5
    if-nez v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v3, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v12, v9

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    sub-long v12, p1, v12

    const v9, 0x49742400    # 1000000.0f

    mul-float/2addr v9, v8

    float-to-long v14, v9

    mul-long/2addr v12, v14

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    add-long v4, v10, v12

    goto/16 :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v9, p1, v10

    if-gez v9, :cond_a

    const/4 v9, 0x1

    :goto_6
    if-nez v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v3, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v8

    const/4 v9, 0x1

    move/from16 v0, p3

    if-eq v0, v9, :cond_b

    const/4 v9, 0x2

    move/from16 v0, p3

    if-eq v0, v9, :cond_c

    :cond_9
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v9, 0x0

    goto :goto_6

    :cond_b
    long-to-double v10, v6

    float-to-double v12, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v14, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int v9, v14, v9

    int-to-double v14, v9

    mul-double/2addr v12, v14

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-long v6, v10

    goto :goto_7

    :cond_c
    long-to-double v10, v6

    float-to-double v12, v8

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double v12, v14, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v14, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int v9, v14, v9

    int-to-double v14, v9

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-long v6, v10

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    cmp-long v9, p1, v10

    if-gtz v9, :cond_e

    const/4 v9, 0x1

    :goto_8
    if-nez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    const/16 v10, 0x9

    if-eq v9, v10, :cond_f

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_e
    const/4 v9, 0x0

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v10, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    sub-int v9, v10, v9

    int-to-long v10, v9

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    add-long/2addr v6, v10

    goto :goto_9
.end method

.method public static getMaxEncodingDuration(IIII)I
    .locals 12

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    int-to-float v3, p0

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v3, v8

    float-to-int v3, v3

    int-to-long v4, v3

    mul-int v3, p1, p2

    div-int/lit16 v2, v3, 0x100

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1

    const/16 v3, 0x64

    if-gt v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_3

    :goto_0
    const/4 v3, 0x1

    if-eq p3, v3, :cond_4

    const-wide/16 v8, 0x8

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-int/lit8 v3, v1, 0x40

    int-to-long v10, v3

    div-long v6, v8, v10

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Size "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " width "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " height "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " audiocodec "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " maxdur "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "TranscodeLib"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v0, v6

    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_5

    return v0

    :cond_1
    const/16 v1, 0x63

    goto :goto_0

    :cond_2
    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_0

    const/16 v1, 0x96

    goto :goto_0

    :cond_3
    const/16 v1, 0x15e

    goto :goto_0

    :cond_4
    const-wide/16 v8, 0x8

    mul-long/2addr v8, v4

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-int/lit8 v3, v1, 0x8

    int-to-long v10, v3

    div-long v6, v8, v10

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    return v3
.end method

.method private getRecordingMode(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I
    .locals 12

    sget-boolean v10, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v10, :cond_1

    if-eqz p1, :cond_4

    :goto_0
    new-instance v9, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v9}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v8, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v10, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v10, :cond_5

    invoke-virtual {v9, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_1
    const/16 v10, 0x3fe

    invoke-virtual {v9, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x3f7

    invoke-virtual {v9, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-nez v9, :cond_b

    :cond_0
    :goto_4
    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getRecordingMode :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "TranscodeLib"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    if-nez p2, :cond_3

    :cond_2
    const-string/jumbo v10, "TranscodeLib"

    const-string/jumbo v11, "uri or context  is NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return v10

    :cond_3
    if-eqz p3, :cond_2

    goto :goto_0

    :cond_4
    const-string/jumbo v10, "TranscodeLib"

    const-string/jumbo v11, "filepath is NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return v10

    :cond_5
    :try_start_1
    invoke-virtual {v9, p2, p3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_4

    :cond_6
    const/4 v10, 0x1

    if-ne v8, v10, :cond_9

    :cond_7
    const/16 v10, 0x9

    :try_start_3
    invoke-virtual {v9, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    int-to-long v2, v10

    const/16 v10, 0x3ff

    invoke-virtual {v9, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getRecordingMode : duration:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "TranscodeLib"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    if-nez v7, :cond_a

    :cond_8
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getRecordingMode : NumOfSVCLayers:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->NumOfSVCLayers:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "TranscodeLib"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catch_1
    move-exception v4

    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " throwing number format exp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "TranscodeLib"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_4

    :cond_9
    const/4 v10, 0x2

    if-eq v8, v10, :cond_7

    const/16 v10, 0x8

    if-eq v8, v10, :cond_7

    const/4 v10, 0x7

    if-eq v8, v10, :cond_7

    goto/16 :goto_2

    :cond_a
    :try_start_5
    const-string/jumbo v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_8

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->NumOfSVCLayers:I

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    if-nez v9, :cond_c

    :goto_6
    const/4 v9, 0x0

    throw v0

    :cond_b
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v9}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_6
.end method

.method private getSlowfastSeektime(J)J
    .locals 25

    const/4 v7, 0x1

    const/high16 v18, 0x3f800000    # 1.0f

    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalduration:J

    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v20, 0x0

    cmp-long v19, p1, v20

    if-ltz v19, :cond_0

    const/16 v19, 0x1

    :goto_0
    if-nez v19, :cond_1

    const-wide/16 v20, -0x1

    return-wide v20

    :cond_0
    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getSlowfastSeektime  RegionList.size():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "TranscodeLib"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    :cond_2
    const-string/jumbo v19, "TranscodeLib"

    const-string/jumbo v20, "There is no region info."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v6, v0, :cond_5

    :cond_4
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[getSlowfastSeektime] seekTimeUs= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "TranscodeLib"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/transcode/core/Encode$Region;

    move-object/from16 v0, v19

    iget v7, v0, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/transcode/core/Encode$Region;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/transcode/core/Encode$Region;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v14, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/transcode/core/Encode$Region;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v10, v20, v22

    sub-long v8, v10, v14

    const v19, 0x49742400    # 1000000.0f

    mul-float v19, v19, v18

    move/from16 v0, v19

    float-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v20, v20, v8

    const-wide/32 v22, 0xf4240

    div-long v12, v20, v22

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[getSlowFastSeektime] regScaledDuration ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", regDuration ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", playSpeed ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "TranscodeLib"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long v20, v14, v16

    cmp-long v19, p1, v20

    if-gez v19, :cond_6

    const/16 v19, 0x1

    :goto_3
    if-nez v19, :cond_8

    add-long v20, v12, v14

    add-long v20, v20, v16

    cmp-long v19, p1, v20

    if-lez v19, :cond_7

    const/16 v19, 0x1

    :goto_4
    if-nez v19, :cond_8

    sub-long v20, p1, v14

    sub-long v20, v20, v16

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v18

    move/from16 v0, v19

    float-to-long v0, v0

    move-wide/from16 v20, v0

    add-long p1, v14, v20

    goto/16 :goto_2

    :cond_6
    const/16 v19, 0x0

    goto :goto_3

    :cond_7
    const/16 v19, 0x0

    goto :goto_4

    :cond_8
    add-long v20, v12, v14

    add-long v20, v20, v16

    cmp-long v19, p1, v20

    if-gtz v19, :cond_a

    const/16 v19, 0x1

    :goto_5
    if-nez v19, :cond_c

    sub-long v20, v12, v8

    add-long v16, v16, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_b

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_a
    const/16 v19, 0x0

    goto :goto_5

    :cond_b
    sub-long p1, p1, v16

    goto/16 :goto_2

    :cond_c
    add-long v20, v14, v16

    cmp-long v19, p1, v20

    if-ltz v19, :cond_d

    const/16 v19, 0x1

    :goto_6
    if-nez v19, :cond_9

    if-eqz v6, :cond_4

    sub-long p1, p1, v16

    goto/16 :goto_2

    :cond_d
    const/16 v19, 0x0

    goto :goto_6
.end method

.method private getSuperslowSeektime(J)J
    .locals 23

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-wide/from16 v16, p1

    const-wide/16 v18, 0x0

    cmp-long v18, p1, v18

    if-ltz v18, :cond_0

    const/16 v18, 0x1

    :goto_0
    if-nez v18, :cond_1

    const-wide/16 v18, -0x1

    return-wide v18

    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    :cond_2
    const-string/jumbo v18, "TranscodeLib"

    const-string/jumbo v19, "There is no region info."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v4, v0, :cond_5

    :cond_4
    :goto_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[getSuperslowSeektime] seekTimeUs= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "TranscodeLib"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/transcode/core/Encode$Region;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v12, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/transcode/core/Encode$Region;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v10, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/transcode/core/Encode$Region;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v6, v18, v20

    sub-long v8, v10, v6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/transcode/core/Encode$Region;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    move/from16 v18, v0

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    :goto_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "[getSuperslowSeektime] regStartTime = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",regEndTime : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",regAudioEndTime: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", isCancel ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",tmpSeekTimeUs: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", timeDelta:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", seekTimeUs:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", i :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "TranscodeLib"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v18, v16, v6

    if-gez v18, :cond_8

    const/16 v18, 0x1

    :goto_4
    if-nez v18, :cond_c

    cmp-long v18, v16, v10

    if-lez v18, :cond_9

    const/16 v18, 0x1

    :goto_5
    if-nez v18, :cond_c

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_a

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_b

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_8
    const/16 v18, 0x0

    goto :goto_4

    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    :cond_a
    add-long/2addr v14, v8

    add-long v16, v16, v8

    goto :goto_6

    :cond_b
    add-long p1, p1, v14

    goto/16 :goto_2

    :cond_c
    cmp-long v18, v16, v10

    if-gtz v18, :cond_d

    const/16 v18, 0x1

    :goto_7
    if-nez v18, :cond_f

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_e

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_6

    add-long p1, p1, v14

    goto/16 :goto_2

    :cond_d
    const/16 v18, 0x0

    goto :goto_7

    :cond_e
    add-long/2addr v14, v8

    add-long v16, v16, v8

    goto :goto_8

    :cond_f
    cmp-long v18, v16, v6

    if-ltz v18, :cond_10

    const/16 v18, 0x1

    :goto_9
    if-nez v18, :cond_6

    if-eqz v4, :cond_4

    add-long p1, p1, v14

    goto/16 :goto_2

    :cond_10
    const/16 v18, 0x0

    goto :goto_9
.end method

.method private getVideoSampleSize(Landroid/media/MediaFormat;)I
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return v4

    :cond_0
    const-string/jumbo v2, "width"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "height"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    mul-int v2, v1, v0

    return v2
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7f000100 -> :sswitch_0
    .end sparse-switch
.end method

.method private isSEFRegion(JI)Z
    .locals 11

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_1

    const/4 v6, 0x0

    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-nez v6, :cond_3

    :cond_2
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "There is no region info."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return v6

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v0, v6, :cond_4

    :goto_2
    return v1

    :cond_4
    const/4 v6, 0x1

    if-ne p3, v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long v4, v6, v8

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long v2, v6, v8

    cmp-long v6, p1, v4

    if-gez v6, :cond_7

    const/4 v6, 0x1

    :goto_4
    if-nez v6, :cond_9

    cmp-long v6, p1, v2

    if-ltz v6, :cond_8

    const/4 v6, 0x1

    :goto_5
    if-nez v6, :cond_9

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x2

    if-eq p3, v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v6, v6, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long v4, v6, v8

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportedFormat(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static parseAvcProfile([B)I
    .locals 2

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    and-int/lit16 v0, v1, 0xff

    sparse-switch v0, :sswitch_data_0

    const/4 v1, -0x1

    return v1

    :sswitch_0
    const/4 v1, 0x1

    return v1

    :sswitch_1
    const/4 v1, 0x2

    return v1

    :sswitch_2
    const/4 v1, 0x4

    return v1

    :sswitch_3
    const/16 v1, 0x8

    return v1

    :sswitch_4
    const/16 v1, 0x10

    return v1

    :sswitch_5
    const/16 v1, 0x20

    return v1

    :sswitch_6
    const/16 v1, 0x40

    return v1

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x4d -> :sswitch_1
        0x58 -> :sswitch_2
        0x64 -> :sswitch_3
        0x6e -> :sswitch_4
        0x7a -> :sswitch_5
        0xf4 -> :sswitch_6
    .end sparse-switch
.end method

.method private procSuperSlowVideo(JI[BI)Z
    .locals 23

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    sget-object v6, Lcom/samsung/android/transcode/core/Encode$Speed;->NORMAL:Lcom/samsung/android/transcode/core/Encode$Speed;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    move-wide/from16 v8, p1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[procSuperSlowVideo]SampleTime = tempSampleTime = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "TranscodeLib"

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    if-nez v13, :cond_2

    :cond_0
    :goto_0
    const/4 v13, 0x1

    if-eq v3, v13, :cond_16

    :cond_1
    :goto_1
    return v7

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lt v2, v13, :cond_3

    :goto_3
    add-long v14, v8, v10

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    cmp-long v13, p1, v14

    if-gez v13, :cond_4

    const/4 v13, 0x1

    :goto_4
    if-nez v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    cmp-long v13, p1, v14

    if-ltz v13, :cond_5

    const/4 v13, 0x1

    :goto_5
    if-nez v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    const/16 v14, 0x9

    if-eq v13, v14, :cond_6

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    aget-byte v13, p4, v13

    and-int/lit8 v13, v13, 0x1f

    const/16 v14, 0xe

    if-eq v13, v14, :cond_b

    :cond_7
    :goto_6
    if-eqz p5, :cond_c

    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    sub-long v14, v14, p1

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_d

    const/4 v13, 0x1

    :goto_8
    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    sub-long v14, v14, p1

    long-to-double v14, v14

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff7333333333333L    # 1.45

    div-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v18, v20, v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x402c000000000000L    # 14.0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    cmpg-double v13, v14, v16

    if-gez v13, :cond_a

    const/4 v13, 0x1

    if-eq v5, v13, :cond_e

    const/4 v13, 0x2

    if-eq v5, v13, :cond_f

    :cond_8
    const/4 v13, 0x3

    if-eq v5, v13, :cond_10

    :cond_9
    const/4 v13, 0x4

    if-eq v5, v13, :cond_11

    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v6, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    sub-long v16, p1, v16

    const v13, 0x49742400    # 1000000.0f

    mul-float/2addr v13, v12

    float-to-long v0, v13

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    const-wide/32 v18, 0xf4240

    div-long v16, v16, v18

    add-long v8, v14, v16

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_b
    const/4 v13, 0x1

    aget-byte v13, p4, v13

    and-int/lit16 v13, v13, 0x80

    const/16 v14, 0x80

    if-ne v13, v14, :cond_7

    const/4 v13, 0x3

    aget-byte v13, p4, v13

    and-int/lit16 v13, v13, 0xe0

    ushr-int/lit8 v5, v13, 0x5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "layernum:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "TranscodeLib"

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_c
    const/16 p5, 0x1e

    goto/16 :goto_7

    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_e
    const/4 v4, 0x1

    goto :goto_9

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    sub-long v14, v14, p1

    long-to-double v14, v14

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff7333333333333L    # 1.45

    div-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v18, v20, v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4018000000000000L    # 6.0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    cmpg-double v13, v14, v16

    if-gez v13, :cond_8

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    sub-long v14, v14, p1

    long-to-double v14, v14

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff7333333333333L    # 1.45

    div-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v18, v20, v18

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    cmpg-double v13, v14, v16

    if-gez v13, :cond_9

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    sub-long v14, v14, p1

    long-to-double v14, v14

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff7333333333333L    # 1.45

    div-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    cmpg-double v13, v14, v16

    if-gez v13, :cond_a

    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v14, v13

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    cmp-long v13, p1, v14

    if-gez v13, :cond_14

    const/4 v13, 0x1

    :goto_a
    if-nez v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    const/16 v14, 0x9

    if-eq v13, v14, :cond_15

    :cond_13
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_14
    const/4 v13, 0x0

    goto :goto_a

    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget-object v6, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getTimeScale(Lcom/samsung/android/transcode/core/Encode$Speed;)F

    move-result v12

    long-to-double v14, v10

    float-to-double v0, v12

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v18, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v0, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v13, v13, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    sub-int v13, v18, v13

    int-to-double v0, v13

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    double-to-long v10, v14

    goto :goto_b

    :cond_16
    if-nez v5, :cond_17

    :goto_c
    const/4 v13, 0x1

    if-ne v4, v13, :cond_1

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_17
    const/4 v7, 0x1

    goto :goto_c
.end method

.method private static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "couldn\'t find a good color format for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "TranscodeLib"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    iget-object v3, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v3, v2

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->isRecognizedFormat(I)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "colorFormat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    return v1
.end method

.method private slowfastSEFParser(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sefData read slow : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TranscodeLib"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string/jumbo v5, "\\*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slowDataregion,length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TranscodeLib"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-lt v0, v5, :cond_1

    return v8

    :cond_0
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "sefData == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    aget-object v5, v3, v0

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/transcode/core/Encode$Region;

    invoke-direct {v4}, Lcom/samsung/android/transcode/core/Encode$Region;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    iget v5, v4, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSpeed(I)Lcom/samsung/android/transcode/core/Encode$Speed;

    move-result-object v5

    iput-object v5, v4, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    iget-object v5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "throwing number format:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TranscodeLib"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private superslowSEFParser(Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sefData read super : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string/jumbo v6, "\\*"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slowDataregion,length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    array-length v6, v4

    if-lt v0, v6, :cond_1

    return v9

    :cond_0
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "sefData == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    aget-object v6, v4, v0

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aget-object v6, v3, v6

    const-string/jumbo v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    if-gt v6, v9, :cond_2

    :goto_1
    new-instance v5, Lcom/samsung/android/transcode/core/Encode$Region;

    invoke-direct {v5}, Lcom/samsung/android/transcode/core/Encode$Region;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionStartTime:I

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionAudioEndTime:I

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    iget v6, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeed:I

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSpeed(I)Lcom/samsung/android/transcode/core/Encode$Speed;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionSpeedType:Lcom/samsung/android/transcode/core/Encode$Speed;

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    aget-object v6, v1, v6

    const/4 v7, 0x3

    aput-object v6, v3, v7

    const/4 v6, 0x1

    aget-object v6, v1, v6

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMainRegion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "throwing number format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method private static final unsignedIntToLong([B)J
    .locals 7

    const/16 v6, 0x8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    or-long v0, v4, v2

    shl-long/2addr v0, v6

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    shl-long/2addr v0, v6

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    shl-long/2addr v0, v6

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public checkTransRewritable(Landroid/media/MediaFormat;ILandroid/net/Uri;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v2, "moof"

    invoke-static {p3, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->findAtom(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-eq v2, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const-string/jumbo v2, "moof detected"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkTransRewritable(Landroid/media/MediaFormat;ILjava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Build.VERSION.SEM_PLATFORM_INT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x13948

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    const-string/jumbo v2, "moof"

    invoke-static {p3, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eq v2, v4, :cond_2

    :goto_1
    return v4

    :cond_1
    :try_start_1
    const-string/jumbo v2, "ctts"

    invoke-static {p3, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->findAtom(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    const-string/jumbo v2, "ctts detected"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    const-string/jumbo v2, "moof detected"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getLocalEncHeader(I)Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v21, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v36

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    :goto_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v6, v7, v8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v24

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    const-string/jumbo v7, "bitrate"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v6, "frame-rate"

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v6, "color-format"

    invoke-virtual/range {v21 .. v21}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/transcode/core/EncodeVideo;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoIFrameInterval:I

    const-string/jumbo v7, "i-frame-interval"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoProfile:I

    const-string/jumbo v7, "profile"

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Local video format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v6, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v23

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v28

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "inputBufferIndex A: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    if-gez v5, :cond_0

    :goto_1
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    new-instance v17, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v27

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "outputBufferIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v6, -0x2

    move/from16 v0, v27

    if-eq v0, v6, :cond_1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "outputBufferIndex 4: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v27, :cond_2

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    :goto_3
    const/4 v6, 0x0

    return-object v6

    :catch_0
    move-exception v18

    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "codec cannot be created"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type is not a valid mime type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "TranscodeLib"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v20

    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "type is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    :try_start_2
    aget-object v22, v23, v5

    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "inputBufferIndex G4: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    aget-object v22, v23, v5

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "inputBufferIndex G5: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v35

    :try_start_3
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    goto/16 :goto_3

    :cond_1
    const-wide/16 v6, 0x0

    :try_start_4
    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v27

    goto/16 :goto_2

    :cond_2
    aget-object v26, v28, v27

    move-object/from16 v0, v17

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v6, [B

    move-object/from16 v25, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bufferInfo.size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static/range {v25 .. v25}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const-string/jumbo v6, "Invalid start pattern"

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_4
    const/16 v30, 0x0

    :cond_3
    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->position()I

    move-result v30

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ppsIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    add-int/lit8 v6, v30, -0x8

    new-array v0, v6, [B

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v6, v0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-static {v0, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v25

    array-length v6, v0

    sub-int v6, v6, v30

    new-array v0, v6, [B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v31, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;

    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-direct {v0, v6}, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo$1;)V

    move-object/from16 v0, v33

    array-length v6, v0

    move-object/from16 v0, v33

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_sps:[B

    move-object/from16 v0, v29

    array-length v6, v0

    move-object/from16 v0, v29

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    move-object/from16 v0, v31

    iput-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_pps:[B

    const-string/jumbo v32, ""

    move-object/from16 v12, v33

    move-object/from16 v0, v33

    array-length v13, v0

    const/4 v14, 0x0

    :goto_5
    if-lt v14, v13, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Local SPS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-string/jumbo v32, ""

    move-object/from16 v12, v29

    move-object/from16 v0, v29

    array-length v13, v0

    const/4 v14, 0x0

    :goto_6
    if-lt v14, v13, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Local PPS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v6, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v27

    move-object/from16 v11, v31

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    return-object v31

    :cond_4
    :try_start_5
    const-string/jumbo v6, "start pattern match"

    invoke-static {v6}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v15

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    throw v15

    :cond_5
    :try_start_6
    aget-byte v16, v33, v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    :cond_6
    aget-byte v16, v29, v14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v32

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6
.end method

.method public getOutputFileSize()I
    .locals 19

    const-wide/16 v16, 0x0

    :try_start_0
    sget-boolean v3, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v13

    :goto_0
    invoke-static {v13}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-wide/from16 v16, v0

    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-nez v3, :cond_2

    const-string/jumbo v3, "durationUs"

    invoke-virtual {v12, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getOutputFileSize  trimEndTime was 0 but updated  trimEndTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "TranscodeLib"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->release()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v4, "video/avc"

    if-eq v3, v4, :cond_4

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v6, v16, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    div-int/lit16 v8, v8, 0x3e8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v3

    mul-int/lit16 v14, v3, 0x3e8

    :goto_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v4, v16, v4

    long-to-double v4, v4

    const-wide v6, 0x415e848000000000L    # 8000000.0

    div-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    add-int/2addr v3, v14

    int-to-double v6, v3

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v15, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    int-to-double v4, v15

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v3, v4

    return v3

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v13

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSEFVideoDuration(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v16

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_4
    const v3, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    return v3

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    mul-int/lit16 v14, v3, 0x3e8

    goto :goto_4

    :cond_6
    return v15

    :catch_1
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v3, -0x1

    return v3
.end method

.method public getSEFVideoDuration(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    sget-boolean v5, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v5, :cond_1

    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v4

    :goto_0
    const/16 v5, 0x405

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    const-wide/16 v8, 0x3e8

    mul-long v2, v6, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSEFVideoDuration  duration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "TranscodeLib"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    const/4 v4, 0x0

    return-wide v2

    :cond_1
    invoke-static {p2, p3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createMediaMetadataRetriever(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-nez v4, :cond_3

    :goto_2
    const/4 v4, 0x0

    throw v0

    :cond_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2
.end method

.method public getVideoFramerate(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I
    .locals 26

    const/16 v18, 0x0

    :try_start_0
    sget-boolean v21, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v21, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    :goto_0
    const/16 v20, 0x0

    const/4 v5, -0x1

    const/4 v12, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v16, 0x0

    const/16 v19, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v11

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v13

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_1

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v10, 0x0

    :goto_1
    const/16 v21, 0x5

    move/from16 v0, v21

    if-le v10, v0, :cond_2

    const-wide/16 v22, 0x3e8

    div-long v22, v2, v22

    int-to-long v0, v8

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    const-wide/16 v24, 0x3e8

    div-long v22, v24, v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    if-gtz v21, :cond_4

    const/16 v9, 0x1e

    :goto_2
    move/from16 v19, v9

    :goto_3
    if-nez v18, :cond_5

    :goto_4
    return v19

    :cond_0
    :try_start_1
    invoke-static/range {p2 .. p3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v18

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string/jumbo v21, "TranscodeLib"

    const-string/jumbo v22, "Valid video track absent"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1e

    goto :goto_3

    :cond_2
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaExtractor;->advance()Z

    if-eqz v10, :cond_3

    sub-long v22, v14, v16

    add-long v2, v2, v22

    move-wide/from16 v16, v14

    add-int/lit8 v8, v8, 0x1

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v14

    goto :goto_5

    :cond_4
    const-wide/16 v22, 0x3e8

    div-long v22, v2, v22

    int-to-long v0, v8

    move-wide/from16 v24, v0

    div-long v22, v22, v24

    const-wide/16 v24, 0x3e8

    div-long v22, v24, v22

    move-wide/from16 v0, v22

    long-to-int v9, v0

    goto :goto_2

    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-lez p2, :cond_0

    if-lez p3, :cond_1

    if-eqz p1, :cond_2

    if-eqz p5, :cond_3

    if-eqz p4, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILandroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v6, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CheckSEFData mSEFVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TranscodeLib"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_0

    if-lez p3, :cond_1

    if-eqz p1, :cond_2

    if-eqz p5, :cond_3

    if-eqz p4, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILandroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;IILandroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    if-lez p2, :cond_1

    if-lez p3, :cond_2

    if-eqz p1, :cond_3

    if-eqz p5, :cond_4

    if-eqz p4, :cond_5

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILandroid/content/Context;Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p7, :cond_8

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p5, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-direct {p0, v6, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CheckSEFData failed! mSEFVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TranscodeLib"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-lez p3, :cond_1

    if-eqz p1, :cond_2

    if-eqz p4, :cond_3

    sput-boolean v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p4, v2, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CheckSEFData mSEFVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TranscodeLib"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p2, :cond_0

    if-lez p3, :cond_1

    if-eqz p1, :cond_2

    if-eqz p4, :cond_3

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

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
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-lez p2, :cond_1

    if-lez p3, :cond_2

    if-eqz p1, :cond_3

    if-eqz p4, :cond_4

    sput-boolean v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p6, :cond_7

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-direct {p0, p4, v1, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckSEFData(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CheckSEFData failed! mSEFVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TranscodeLib"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initialize(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/transcode/core/Encode$EncodeResolution;->isSupportedResolution(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p2, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->fillResolutionRect(ILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid resolution value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Output file path cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Input file path cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareVideoCodec()V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareAudioCodec()V

    return-void
.end method

.method protected prepareAudioCodec()V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v4, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v17

    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v24

    const-string/jumbo v4, "mime"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "audio/unknown"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "error-type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v4, v30, v32

    if-nez v4, :cond_1

    const-string/jumbo v4, "durationUs"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-nez v4, :cond_b

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mTrimAudioEndUs was 0 but updated mTrimAudioEndUs :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", mOriginTrimEndUs:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "TranscodeLib"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Audio input format "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "TranscodeLib"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sample-rate"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    const-string/jumbo v4, "channel-count"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const-string/jumbo v4, "mime"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v4, "audio/mp4a-latm"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string/jumbo v4, "audio/ac3"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    :cond_2
    :goto_2
    const/16 v25, 0x0

    :try_start_0
    const-string/jumbo v4, "max-input-size"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v25

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    if-nez v4, :cond_1d

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    invoke-static {v4, v6, v10}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v27

    if-nez v25, :cond_1e

    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    const-string/jumbo v6, "bitrate"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioAACProfile:I

    const-string/jumbo v6, "aac-profile"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Audio output format "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "TranscodeLib"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-static {v11, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-string/jumbo v4, "audio/mp4a-latm"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    :goto_6
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    if-nez v4, :cond_6

    :cond_5
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "mInputUri or mContext  is NULL"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v4, v6}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    goto/16 :goto_0

    :cond_7
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "mInputFilePath is NULL"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_9
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "Audio mime type is unknown. Ignore audio track."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_a
    const/16 v23, 0x0

    const-string/jumbo v4, "error-type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v23

    if-eqz v23, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Audio codec error appear : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "TranscodeLib"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSEFVideoDuration(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    goto/16 :goto_1

    :cond_c
    :try_start_1
    invoke-static/range {v26 .. v26}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_e

    const/16 v16, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_f

    const/4 v13, 0x0

    :goto_8
    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v28, -0x1

    new-instance v29, Lcom/samsung/android/transcode/core/EncodeVideo$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$1;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-nez v4, :cond_1a

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v30, 0x0

    const/4 v6, 0x0

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_0
    move-exception v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    :cond_e
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v13

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-eqz v4, :cond_12

    :cond_11
    :goto_b
    const/4 v4, 0x3

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->scheduleAfter(ILjava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-nez v4, :cond_d

    const/4 v4, -0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v30, 0x2710

    move-wide/from16 v0, v30

    invoke-virtual {v4, v15, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v14

    const/4 v4, -0x1

    if-eq v14, v4, :cond_15

    const/4 v4, -0x3

    if-eq v14, v4, :cond_16

    const/4 v4, -0x2

    if-eq v14, v4, :cond_17

    if-ltz v14, :cond_18

    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_19

    move/from16 v28, v14

    goto :goto_9

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v30, 0x2710

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v4, -0x1

    if-eq v5, v4, :cond_13

    aget-object v12, v13, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    if-gtz v7, :cond_14

    const/4 v4, -0x1

    if-ne v7, v4, :cond_11

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Audio buffer is empty, size :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "TranscodeLib"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto/16 :goto_2

    :cond_13
    :try_start_3
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "audio decoder input try again later while preparing audio codec"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_b

    :cond_15
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "audio decoder output buffer try again later while preparing audio codec"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_16
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "audio decoder: output buffers changed "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16

    goto/16 :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    const-string/jumbo v6, "sample-rate"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    const-string/jumbo v6, "channel-count"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "audio decoder: output format changed: SampleRate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ",ChannelCount"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "TranscodeLib"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    goto/16 :goto_9

    :cond_18
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_19
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "audio decoder: codec config buffer"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v4, v14, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    :cond_1a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_a

    :catch_2
    move-exception v19

    :try_start_5
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "Exception in releasing input audio decoder."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_a

    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const/4 v6, 0x2

    if-gt v4, v6, :cond_1c

    :goto_c
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "Audio ac3 type :  mOutputAudioChannelCount is changed."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1c
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    goto :goto_c

    :catch_3
    move-exception v21

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "Audio max input size not defined"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const/4 v6, 0x2

    if-lt v4, v6, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    goto/16 :goto_4

    :cond_1e
    const-string/jumbo v4, "max-input-size"

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_1f
    invoke-static/range {v26 .. v26}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    goto/16 :goto_6
.end method

.method protected prepareVideoCodec()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_0
    new-instance v19, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v19 .. v19}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const-string/jumbo v12, ""

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_1
    const/16 v2, 0x18

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v18

    const/16 v2, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    if-nez v18, :cond_a

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-nez v19, :cond_b

    :cond_0
    :goto_3
    const/16 v19, 0x0

    sget-boolean v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "input video format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-wide/16 v24, 0x0

    cmp-long v2, v2, v24

    if-nez v2, :cond_1

    const-string/jumbo v2, "durationUs"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-nez v2, :cond_e

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTrimVideoEndUs was 0 but updated  mTrimVideoEndUs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mOriginTrimEndUs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v24, 0x0

    cmp-long v2, v2, v24

    if-gez v2, :cond_f

    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->m2ndTimeEncoding:Z

    if-eqz v2, :cond_10

    :cond_2
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    if-nez v2, :cond_11

    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    div-long v6, v24, v26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    div-int/lit16 v8, v2, 0x3e8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    :goto_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    :try_start_1
    const-string/jumbo v2, "frame-rate"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    if-nez v2, :cond_13

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoFramerate(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    if-nez v2, :cond_14

    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    if-gtz v2, :cond_1c

    :cond_4
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSourceFrameRate :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mOutputVideoFrameRate :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",mFramesSkipInterval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v2, v3, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v21

    const-string/jumbo v2, "color-format"

    const v3, 0x7f000789

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    const-string/jumbo v3, "bitrate"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    const-string/jumbo v3, "frame-rate"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoIFrameInterval:I

    const-string/jumbo v3, "i-frame-interval"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "output video format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v2, v0, v3, v10, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v2, Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Build.VERSION.SEM_PLATFORM_INT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v3, 0x13948

    if-gt v2, v3, :cond_1d

    new-instance v2, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-direct {v2, v3}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    :goto_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z

    if-nez v2, :cond_1f

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_20

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    if-nez v2, :cond_7

    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "mInputUri or mContext  is NULL"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    if-eqz v2, :cond_6

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "mInputFilePath is NULL"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v15

    :try_start_3
    invoke-virtual {v15}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_3

    :cond_a
    const/4 v13, 0x0

    :try_start_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v13

    :goto_10
    sparse-switch v13, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const/4 v2, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v11

    if-nez v19, :cond_c

    :goto_11
    const/16 v19, 0x0

    throw v11

    :catch_1
    move-exception v16

    :try_start_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_10

    :sswitch_1
    const/16 v2, 0x5a

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto/16 :goto_2

    :sswitch_2
    const/16 v2, 0xb4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto/16 :goto_2

    :sswitch_3
    const/16 v2, 0x10e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_3

    :cond_c
    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_11

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSEFVideoDuration(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    goto/16 :goto_5

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v3, "video/avc"

    if-ne v2, v3, :cond_2

    const v2, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    goto/16 :goto_7

    :cond_11
    const/16 v2, 0x7d00

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v2, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->suggestBitRate(II)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    goto/16 :goto_9

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    const/16 v3, 0xfa

    if-gt v2, v3, :cond_3

    goto/16 :goto_b

    :cond_14
    const/16 v2, 0xa

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    goto/16 :goto_c

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    int-to-float v2, v2

    const/high16 v3, 0x41f00000    # 30.0f

    div-float v2, v3, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1b

    :cond_18
    :goto_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSkipFrames:Z

    goto/16 :goto_d

    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    div-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    goto :goto_12

    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    const/16 v3, 0x82

    if-ge v2, v3, :cond_17

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    const/16 v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    goto :goto_12

    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    const/16 v3, 0x1e

    div-int v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    goto :goto_12

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    goto/16 :goto_d

    :cond_1d
    :try_start_7
    const-string/jumbo v2, "width"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v2, "height"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    int-to-float v2, v8

    int-to-float v3, v9

    div-float v20, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    int-to-float v3, v3

    div-float v22, v2, v3

    cmpl-float v2, v20, v22

    if-lez v2, :cond_1e

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    mul-int/2addr v2, v9

    div-int v7, v2, v8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    sub-int/2addr v2, v7

    div-int/lit8 v5, v2, 0x2

    :goto_13
    new-instance v2, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(IIIIIIIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_e

    :catch_2
    move-exception v14

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v3, "Can\'t get input video resolution"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-direct {v2, v3}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    goto/16 :goto_e

    :cond_1e
    :try_start_8
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    mul-int/2addr v2, v8

    div-int v6, v2, v9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    sub-int/2addr v2, v6

    div-int/lit8 v4, v2, 0x2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v5, 0x0

    goto :goto_13

    :cond_1f
    new-instance v2, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-direct {v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->prepare()I

    goto/16 :goto_f

    :cond_20
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "can\'t set VideoDecoder"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_3
    move-exception v2

    goto/16 :goto_a

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected prepareVideoCodecNeo()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-boolean v10, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v10, :cond_6

    :goto_0
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    sget-boolean v10, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_1
    const/16 v10, 0x18

    invoke-virtual {v6, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x14

    invoke-virtual {v6, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    if-nez v5, :cond_8

    const/4 v10, 0x0

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-nez v6, :cond_9

    :cond_0
    :goto_3
    const/4 v6, 0x0

    sget-boolean v10, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    :goto_4
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v10}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10, v9}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "input video format: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-wide v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    const-string/jumbo v10, "durationUs"

    invoke-virtual {v4, v10}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-string/jumbo v10, "mTrimVideoEndUs was 0 but updated"

    invoke-static {v10}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :cond_1
    const/4 v10, 0x0

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    :try_start_1
    const-string/jumbo v10, "frame-rate"

    invoke-virtual {v4, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_5
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v11, "video/avc"

    if-eq v10, v11, :cond_c

    :cond_2
    :goto_6
    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iget v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    if-gt v10, v11, :cond_d

    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mOutputVideoFrameRate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    sget-boolean v10, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v10}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkRewritable(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    :goto_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "askRewritable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_f

    :goto_9
    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_11

    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    iget v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iget v12, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v10, v11, v12}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v7

    const-string/jumbo v10, "color-format"

    const v11, 0x7f000789

    invoke-virtual {v7, v10, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    const-string/jumbo v11, "bitrate"

    invoke-virtual {v7, v11, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    const-string/jumbo v11, "frame-rate"

    invoke-virtual {v7, v11, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoIFrameInterval:I

    const-string/jumbo v11, "i-frame-interval"

    invoke-virtual {v7, v11, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoProfile:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_12

    const-string/jumbo v10, "Skip video profile setup"

    invoke-static {v10}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "output video format "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    if-nez v10, :cond_5

    :cond_4
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "mInputUri or mContext  is NULL"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    if-eqz v10, :cond_4

    goto/16 :goto_0

    :cond_6
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "mInputFilePath is NULL"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_7
    :try_start_2
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v6, v10, v11}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_3

    :cond_8
    const/4 v1, 0x0

    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    :goto_b
    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const/4 v10, 0x0

    :try_start_5
    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    if-nez v6, :cond_a

    :goto_c
    const/4 v6, 0x0

    throw v0

    :catch_1
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_b

    :sswitch_1
    const/16 v10, 0x5a

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto/16 :goto_2

    :sswitch_2
    const/16 v10, 0xb4

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto/16 :goto_2

    :sswitch_3
    const/16 v10, 0x10e

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_c

    :cond_b
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v10, v11}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    goto/16 :goto_4

    :cond_c
    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    if-lez v10, :cond_2

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    goto/16 :goto_6

    :cond_d
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSkipFrames:Z

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    int-to-float v10, v10

    iget v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    goto/16 :goto_7

    :cond_e
    iget-object v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-static {v10, v11}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkRewritable(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    goto/16 :goto_8

    :cond_f
    sget-boolean v10, Lcom/samsung/android/transcode/core/EncodeVideo;->mUseUri:Z

    if-nez v10, :cond_10

    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iget-object v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {p0, v4, v10, v11}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTransRewritable(Landroid/media/MediaFormat;ILjava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    :goto_d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mTransRewritable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_10
    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    iget-object v11, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputUri:Landroid/net/Uri;

    invoke-virtual {p0, v4, v10, v11}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTransRewritable(Landroid/media/MediaFormat;ILandroid/net/Uri;)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    goto :goto_d

    :cond_11
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Unable to handle input file"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_12
    iget v10, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoProfile:I

    const-string/jumbo v11, "profile"

    invoke-virtual {v7, v11, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/16 :goto_a

    :catch_2
    move-exception v10

    goto/16 :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected prepare_for_transrewrite()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareVideoCodecNeo()V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareAudioCodec()V

    return-void
.end method

.method protected release()V
    .locals 8

    :try_start_0
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "releasing encoder objects"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    if-nez v6, :cond_1

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-nez v6, :cond_2

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    if-nez v6, :cond_3

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-nez v6, :cond_4

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    if-nez v6, :cond_5

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    if-nez v6, :cond_6

    :cond_0
    :goto_5
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    if-nez v6, :cond_7

    :goto_6
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    if-nez v6, :cond_8

    :goto_7
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-nez v6, :cond_9

    :goto_8
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-nez v6, :cond_a

    :goto_9
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_b

    :goto_a
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
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

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v6, 0x0

    :try_start_4
    iput-boolean v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    :cond_2
    :try_start_5
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v5

    :try_start_6
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing input video decoder."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_7
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v5

    :try_start_8
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing video extractor."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :cond_4
    :try_start_9
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v6}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    :catch_3
    move-exception v5

    :try_start_a
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing outputSurface."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    :cond_5
    :try_start_b
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v6}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    :catch_4
    move-exception v5

    :try_start_c
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing logo renderer."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v6, v6, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v6, v6, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v6, v6, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    :cond_7
    :try_start_d
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v6}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_6

    :catch_5
    move-exception v5

    :try_start_e
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing input surface."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    :cond_8
    :try_start_f
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_7

    :catch_6
    move-exception v5

    :try_start_10
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing output audio encoder."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_7

    :cond_9
    :try_start_11
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->stop()V

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_8

    :catch_7
    move-exception v5

    :try_start_12
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing input audio decoder."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_8

    :cond_a
    :try_start_13
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_9

    :catch_8
    move-exception v5

    :try_start_14
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing audio extractor."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_9

    :cond_b
    :try_start_15
    iget-boolean v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v6, :cond_c

    :goto_b
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->release()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_a

    :catch_9
    move-exception v5

    :try_start_16
    const-string/jumbo v6, "TranscodeLib"

    const-string/jumbo v7, "Exception in releasing muxer."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_a

    :cond_c
    :try_start_17
    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->stop()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_b

    :catchall_1
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    throw v1

    :catchall_2
    move-exception v4

    :try_start_19
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    throw v4
.end method

.method public setEncodingCodecs(II)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "videoCodecType is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TranscodeLib"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid video codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "video/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    :goto_0
    packed-switch p2, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid audio codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string/jumbo v0, "video/avc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "audio/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    :goto_1
    return-void

    :pswitch_3
    const-string/jumbo v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMaxOutputSize(I)V
    .locals 9

    const/16 v8, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "max output size is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "TranscodeLib"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v4, p1

    iput-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    if-lt v0, v8, :cond_3

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMMSMode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TranscodeLib"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size cannot be 0 or lesser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    if-ge v0, v8, :cond_0

    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    goto :goto_1
.end method

.method public setTrimTime(JJ)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x3e8

    cmp-long v2, p1, v6

    if-ltz v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    cmp-long v2, p3, v6

    if-ltz v2, :cond_2

    move v2, v1

    :goto_1
    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "end time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    cmp-long v2, p1, p3

    if-gtz v2, :cond_4

    move v0, v1

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be more than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    cmp-long v0, p1, p3

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "endUs cannot be equal to startUs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    mul-long v2, p1, v4

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    mul-long v2, p3, v4

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-nez v0, :cond_7

    mul-long v0, p1, v4

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    mul-long v0, p3, v4

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Trim startUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", OriginstartUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", OriginendUS :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    return-void

    :cond_7
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    if-ne v0, v1, :cond_9

    :cond_8
    mul-long v0, p1, v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    mul-long v0, p3, v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    :cond_a
    mul-long v0, p1, v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    mul-long v0, p3, v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    goto :goto_2
.end method

.method protected startEncoding()V
    .locals 83
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v79

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v74

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v76

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_a

    const/16 v44, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_b

    const/16 v40, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_c

    const/16 v38, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_d

    const/16 v34, 0x0

    :goto_3
    new-instance v78, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v78 .. v78}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v75, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v75 .. v75}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v43, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v43 .. v43}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v37, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v37 .. v37}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v45, 0x0

    const/16 v80, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_e

    const/16 v46, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_f

    const/16 v32, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_10

    const/16 v39, 0x1

    :goto_6
    const/16 v81, 0x0

    const/16 v77, 0x0

    const/16 v73, 0x0

    const/16 v64, -0x1

    const/16 v82, 0x0

    const/16 v69, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    shl-int/lit8 v72, v5, 0x1

    const/16 v56, 0x0

    const/16 v47, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z

    if-nez v5, :cond_11

    :goto_7
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v20, 0x0

    cmp-long v5, v10, v20

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v9, 0x0

    invoke-virtual {v5, v10, v11, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_12

    :cond_1
    const-wide/16 v58, -0x1

    :cond_2
    if-nez v77, :cond_15

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_16

    :cond_4
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_25

    :cond_5
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_38

    :cond_6
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_43

    :cond_7
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_85

    :cond_8
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "Encoding abruptly stopped."

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :cond_9
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "Not starting encoding because it is stopped by user."

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v44

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v40

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v38

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v34

    goto/16 :goto_3

    :cond_e
    const/16 v46, 0x0

    goto/16 :goto_4

    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_5

    :cond_10
    const/16 v39, 0x0

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v9, v9, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v11, v11, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    invoke-virtual {v5, v9, v10, v11}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v5, v5, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v9, 0x0

    iput-object v9, v5, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopX:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    shr-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    sub-float/2addr v5, v9

    neg-float v5, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    div-float v60, v5, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopY:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    shr-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    div-float v61, v5, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    sparse-switch v5, :sswitch_data_0

    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move/from16 v0, v60

    move/from16 v1, v61

    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v9, v9, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v5, v9, v10}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixScale(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    int-to-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v5, v9, v10, v11, v12}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixRotate(FFFF)V

    goto/16 :goto_7

    :sswitch_0
    const/high16 v5, -0x40800000    # -1.0f

    mul-float v61, v61, v5

    goto :goto_e

    :sswitch_1
    const/high16 v5, -0x40800000    # -1.0f

    mul-float v60, v60, v5

    const/high16 v5, -0x40800000    # -1.0f

    mul-float v61, v61, v5

    goto :goto_e

    :sswitch_2
    const/high16 v5, -0x40800000    # -1.0f

    mul-float v60, v60, v5

    goto :goto_e

    :cond_12
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const-wide/16 v20, 0x0

    cmp-long v5, v10, v20

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v9, 0x0

    invoke-virtual {v5, v10, v11, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-wide/from16 v20, v0

    cmp-long v5, v10, v20

    if-ltz v5, :cond_13

    const/4 v5, 0x1

    :goto_10
    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    const-wide/16 v20, -0x1

    cmp-long v5, v10, v20

    if-nez v5, :cond_14

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid File!"

    invoke-direct {v5, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_13
    const/4 v5, 0x0

    goto :goto_10

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_f

    :cond_15
    if-eqz v39, :cond_3

    goto/16 :goto_d

    :cond_16
    if-nez v81, :cond_4

    if-nez v80, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v49

    const/4 v5, -0x1

    move/from16 v0, v49

    if-eq v0, v5, :cond_19

    aget-object v48, v74, v49

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v9, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const/16 v56, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mModifiedVideotime = presentationTime = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-nez v5, :cond_1a

    :goto_11
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_21

    const/4 v5, 0x1

    :goto_12
    if-nez v5, :cond_24

    if-gez v17, :cond_22

    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    move-result v5

    if-eqz v5, :cond_23

    const/16 v81, 0x0

    :goto_14
    if-eqz v81, :cond_4

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "video extractor: EOS"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x4

    move/from16 v19, v49

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v5, :cond_17

    goto/16 :goto_8

    :cond_19
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "no video decoder input buffer"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1a
    const/4 v5, 0x4

    new-array v13, v5, [B

    const/16 v63, 0x4

    const/4 v5, 0x4

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length v5, v13

    const/4 v9, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v13, v9, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mRecordingMode:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v9, 0x2

    if-ne v5, v9, :cond_1d

    :cond_1b
    const/4 v5, 0x0

    aget-byte v5, v13, v5

    and-int/lit8 v5, v5, 0x1f

    const/16 v9, 0xe

    if-eq v5, v9, :cond_1f

    :cond_1c
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "S5 SLOW CASE : Can\'t read layer number"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->NumOfSVCLayers:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    move-object/from16 v9, p0

    move-wide v10, v6

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/transcode/core/EncodeVideo;->ProcSVCLayerDrop(JIIII)Z

    goto/16 :goto_11

    :cond_1d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v9, 0x1

    if-eq v5, v9, :cond_1b

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v9, 0x8

    if-ne v5, v9, :cond_20

    :cond_1e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->NumOfSVCLayers:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    move-object/from16 v9, p0

    move-wide v10, v6

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/transcode/core/EncodeVideo;->procSuperSlowVideo(JI[BI)Z

    move-result v56

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isDrop:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ",mModifiedVideotime : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_1f
    const/4 v5, 0x1

    aget-byte v5, v13, v5

    and-int/lit16 v5, v5, 0x80

    const/16 v9, 0x80

    if-ne v5, v9, :cond_1c

    const/4 v5, 0x3

    aget-byte v5, v13, v5

    and-int/lit16 v5, v5, 0xe0

    ushr-int/lit8 v8, v5, 0x5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->NumOfSVCLayers:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSourceFrameRate:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/transcode/core/EncodeVideo;->ProcSVCLayerDrop(JIIII)Z

    move-result v56

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "layernum:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ",isDrop:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", mModifiedVideotime : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_20
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v9, 0x7

    if-eq v5, v9, :cond_1e

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "Need to check recording mode and SEF data"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_21
    const/4 v5, 0x0

    goto/16 :goto_12

    :cond_22
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedVideotime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/16 v16, 0x0

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v20

    move/from16 v15, v49

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_13

    :cond_23
    const/16 v81, 0x1

    goto/16 :goto_14

    :cond_24
    const/16 v81, 0x1

    goto/16 :goto_14

    :cond_25
    if-nez v73, :cond_5

    if-nez v80, :cond_28

    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v75

    invoke-virtual {v5, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v51

    const/4 v5, -0x1

    move/from16 v0, v51

    if-eq v0, v5, :cond_29

    const/4 v5, -0x3

    move/from16 v0, v51

    if-eq v0, v5, :cond_2a

    const/4 v5, -0x2

    move/from16 v0, v51

    if-eq v0, v5, :cond_2b

    aget-object v50, v76, v51

    move-object/from16 v0, v75

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_2c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "video decoder: returned buffer for time "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v75

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v75

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_2d

    const/16 v68, 0x0

    :goto_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move/from16 v0, v51

    move/from16 v1, v68

    invoke-virtual {v5, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-nez v68, :cond_2e

    :cond_27
    :goto_16
    move-object/from16 v0, v75

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "video decoder: EOS"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v73, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto/16 :goto_9

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v5, :cond_26

    goto/16 :goto_9

    :cond_29
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "no video decoder output buffer"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_2a
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "video decoder: output buffers changed"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v76

    goto/16 :goto_9

    :cond_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "video decoder: codec info format changed"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-string/jumbo v10, "TranscodeLib"

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_2c
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "video decoder: codec config buffer"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move/from16 v0, v51

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_9

    :cond_2d
    const/16 v68, 0x1

    goto/16 :goto_15

    :cond_2e
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "output surface: await new image"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v9, 0x3e8

    invoke-virtual {v5, v9}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v5

    if-eqz v5, :cond_31

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "output surface: draw image"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x4000

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v5}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z

    if-nez v5, :cond_33

    :cond_2f
    :goto_17
    move-object/from16 v0, v75

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimStartUs:J

    move-wide/from16 v20, v0

    cmp-long v5, v10, v20

    if-gez v5, :cond_34

    const/4 v5, 0x1

    :goto_18
    if-nez v5, :cond_27

    if-eqz v56, :cond_35

    :cond_30
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "input surface: skip this frame."

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    if-nez v56, :cond_27

    add-int/lit8 v69, v69, 0x1

    goto/16 :goto_16

    :cond_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v5, :cond_37

    :cond_32
    :goto_1a
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, v65

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_33
    :try_start_1
    rem-int v5, v82, v72

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    if-ge v5, v9, :cond_2f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v5}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->draw()V

    goto :goto_17

    :cond_34
    const/4 v5, 0x0

    goto :goto_18

    :cond_35
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSkipFrames:Z

    if-nez v5, :cond_36

    :goto_1b
    const/16 v69, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, v75

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v20, 0x3e8

    mul-long v10, v10, v20

    invoke-virtual {v5, v10, v11}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "input surface: swap buffers time:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v75

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v5}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "video encoder: notified of new frame"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v82, v82, 0x1

    goto/16 :goto_19

    :cond_36
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    rem-int v5, v69, v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v5, :cond_30

    goto :goto_1b

    :cond_37
    if-eqz v62, :cond_32

    const-string/jumbo v5, "Surface frame wait timed out"

    move-object/from16 v0, v62

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_1a

    :cond_38
    if-nez v77, :cond_6

    if-nez v80, :cond_3a

    :cond_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v78

    invoke-virtual {v5, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v54

    const/4 v5, -0x1

    move/from16 v0, v54

    if-eq v0, v5, :cond_3b

    const/4 v5, -0x3

    move/from16 v0, v54

    if-eq v0, v5, :cond_3c

    const/4 v5, -0x2

    move/from16 v0, v54

    if-eq v0, v5, :cond_3d

    if-ltz v54, :cond_3f

    aget-object v53, v79, v54

    move-object/from16 v0, v78

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_40

    move-object/from16 v0, v78

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_41

    :goto_1c
    move-object/from16 v0, v78

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_42

    :goto_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move/from16 v0, v54

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_a

    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v5, :cond_39

    goto/16 :goto_a

    :cond_3b
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "no video encoder output buffer"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_3c
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "video encoder: output buffers changed"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v79

    goto/16 :goto_a

    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "video encoder: output format changed "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-string/jumbo v10, "TranscodeLib"

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    if-gez v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v80

    goto/16 :goto_a

    :cond_3e
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Video encoder output format changed after muxer has started"

    invoke-direct {v5, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3f
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "Unexpected result from video encoder dequeue output format."

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_40
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "video encoder: codec config buffer"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move/from16 v0, v54

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_a

    :cond_41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "video encoder: writing sample data timestamp "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v78

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    move-object/from16 v0, v53

    move-object/from16 v1, v78

    invoke-virtual {v5, v9, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_1c

    :cond_42
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "video encoder: EOS"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v77, 0x1

    goto/16 :goto_1d

    :cond_43
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_48

    :cond_44
    :goto_1e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_57

    :cond_45
    :goto_1f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_5f

    :cond_46
    :goto_20
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v5, :cond_7

    if-nez v39, :cond_7

    if-nez v45, :cond_7a

    :cond_47
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v43

    invoke-virtual {v5, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v42

    const/4 v5, -0x1

    move/from16 v0, v42

    if-eq v0, v5, :cond_7b

    const/4 v5, -0x3

    move/from16 v0, v42

    if-eq v0, v5, :cond_7c

    const/4 v5, -0x2

    move/from16 v0, v42

    if-eq v0, v5, :cond_7d

    if-ltz v42, :cond_7f

    aget-object v41, v44, v42

    move-object/from16 v0, v43

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_80

    move-object/from16 v0, v43

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_81

    :goto_21
    move-object/from16 v0, v43

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_84

    :goto_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move/from16 v0, v42

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_b

    :cond_48
    if-nez v46, :cond_44

    if-nez v45, :cond_4a

    :cond_49
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v66

    const/16 v57, -0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-nez v5, :cond_4b

    :goto_23
    const/4 v5, -0x1

    move/from16 v0, v57

    if-ne v0, v5, :cond_4e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v15

    const/4 v5, -0x1

    if-eq v15, v5, :cond_51

    aget-object v33, v34, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v9, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v17

    move-wide/from16 v0, v66

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-nez v5, :cond_52

    :goto_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "audioDecoderInput  presentationTimeUs :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v66

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", size:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", mTrimAudioEndUs:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", mModifiedAudiotime :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    cmp-long v5, v66, v10

    if-lez v5, :cond_53

    const/4 v5, 0x1

    :goto_25
    if-nez v5, :cond_56

    if-gez v17, :cond_54

    :goto_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    move-result v5

    if-eqz v5, :cond_55

    const/16 v46, 0x0

    :goto_27
    if-eqz v46, :cond_44

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio decoder sending EOS"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x4

    move/from16 v19, v15

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_1e

    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v5, :cond_44

    if-eqz v47, :cond_49

    goto/16 :goto_1e

    :cond_4b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v9, 0x8

    if-ne v5, v9, :cond_4d

    :cond_4c
    move-object/from16 v0, p0

    move-wide/from16 v1, v66

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkSilentRegion(J)I

    move-result v57

    goto/16 :goto_23

    :cond_4d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v9, 0x7

    if-eq v5, v9, :cond_4c

    goto/16 :goto_23

    :cond_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Seekto region End time :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    const-string/jumbo v10, "TranscodeLib"

    move/from16 v0, v57

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide/16 v24, 0x3e8

    mul-long v20, v20, v24

    move-wide/from16 v0, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move/from16 v0, v57

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v10, v5

    const-wide/16 v20, 0x3e8

    mul-long v10, v10, v20

    const/4 v5, 0x0

    invoke-virtual {v9, v10, v11, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->RegionList:Ljava/util/List;

    move/from16 v0, v57

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/transcode/core/Encode$Region;

    iget v5, v5, Lcom/samsung/android/transcode/core/Encode$Region;->regionEndTime:I

    int-to-long v0, v5

    move-wide/from16 v20, v0

    const-wide/16 v24, 0x3e8

    mul-long v20, v20, v24

    cmp-long v5, v10, v20

    if-ltz v5, :cond_4f

    const/4 v5, 0x1

    :goto_29
    if-nez v5, :cond_44

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    const-wide/16 v20, -0x1

    cmp-long v5, v10, v20

    if-nez v5, :cond_50

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid File!"

    invoke-direct {v5, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4f
    const/4 v5, 0x0

    goto :goto_29

    :cond_50
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_28

    :cond_51
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio decoder input try again later"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_52
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v66

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->getAudioTime(JI)V

    goto/16 :goto_24

    :cond_53
    const/4 v5, 0x0

    goto/16 :goto_25

    :cond_54
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mModifiedAudiotime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/16 v16, 0x0

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_26

    :cond_55
    const/16 v46, 0x1

    goto/16 :goto_27

    :cond_56
    const/16 v46, 0x1

    goto/16 :goto_27

    :cond_57
    if-nez v32, :cond_45

    const/4 v5, -0x1

    move/from16 v0, v64

    if-ne v0, v5, :cond_45

    if-nez v47, :cond_45

    if-nez v45, :cond_59

    :cond_58
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v37

    invoke-virtual {v5, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v36

    const/4 v5, -0x1

    move/from16 v0, v36

    if-eq v0, v5, :cond_5a

    const/4 v5, -0x3

    move/from16 v0, v36

    if-eq v0, v5, :cond_5b

    const/4 v5, -0x2

    move/from16 v0, v36

    if-eq v0, v5, :cond_5c

    if-ltz v36, :cond_5d

    move-object/from16 v0, v37

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5e

    move/from16 v64, v36

    goto/16 :goto_1f

    :cond_59
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v5, :cond_58

    goto/16 :goto_1f

    :cond_5a
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio decoder output buffer try again later while decoding"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :cond_5b
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio decoder: output buffers changed"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v38

    goto/16 :goto_1f

    :cond_5c
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio decoder: output format changed: "

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :cond_5d
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    :cond_5e
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio decoder: codec config buffer"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move/from16 v0, v36

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_1f

    :cond_5f
    if-nez v32, :cond_46

    const/4 v5, -0x1

    move/from16 v0, v64

    if-eq v0, v5, :cond_62

    :cond_60
    move-object/from16 v0, v37

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v17, v0

    move-object/from16 v0, v37

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    int-to-long v10, v4

    const-wide/16 v20, 0x5355

    mul-long v10, v10, v20

    add-long v22, v6, v10

    move-wide/from16 v70, v22

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-nez v5, :cond_63

    :goto_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "presentationTime :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", temp_presentationTime: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", seektime :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v70

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", audioWaitFrame:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v47

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v47, :cond_68

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSEFVideo:Z

    if-nez v5, :cond_71

    :cond_61
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v19

    const/4 v5, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_75

    if-gez v17, :cond_76

    :goto_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move/from16 v0, v64

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v64, -0x1

    move-object/from16 v0, v37

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_46

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio decoder: EOS"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0x1

    goto/16 :goto_20

    :cond_62
    if-nez v47, :cond_60

    goto/16 :goto_20

    :cond_63
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v9, 0x2

    if-ne v5, v9, :cond_65

    :cond_64
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSlowfastSeektime(J)J

    move-result-wide v70

    :goto_2c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    move-object/from16 v0, p0

    move-wide/from16 v1, v70

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->getAudioDrop(JI)Z

    move-result v47

    goto/16 :goto_2a

    :cond_65
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v9, 0x1

    if-eq v5, v9, :cond_64

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/16 v9, 0x8

    if-ne v5, v9, :cond_67

    :cond_66
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/transcode/core/EncodeVideo;->getSuperslowSeektime(J)J

    move-result-wide v70

    goto :goto_2c

    :cond_67
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mRecordingMode:I

    const/4 v9, 0x7

    if-eq v5, v9, :cond_66

    goto :goto_2c

    :cond_68
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v5, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v19

    const/4 v5, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_6a

    if-gez v17, :cond_6b

    :goto_2d
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginTrimEndUs:J

    cmp-long v5, v22, v10

    if-gtz v5, :cond_6e

    const/4 v5, 0x1

    :goto_2e
    if-nez v5, :cond_69

    const/4 v5, -0x1

    move/from16 v0, v64

    if-ne v0, v5, :cond_6f

    :goto_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Forcely EOS  AudioLoopCount :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", seek time:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v70

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", temp_presentationTime :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v47, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->flush()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v9, 0x1

    move-wide/from16 v0, v70

    invoke-virtual {v5, v0, v1, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_69
    move-object/from16 v0, v37

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_46

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio decoder: EOS"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    move/from16 v0, v64

    if-ne v0, v5, :cond_70

    :goto_30
    const/16 v47, 0x0

    const/16 v32, 0x1

    const/4 v4, 0x0

    goto/16 :goto_20

    :cond_6a
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio encoder input buffer try again later"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :cond_6b
    aget-object v52, v40, v19

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    if-gtz v5, :cond_6c

    :goto_31
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v31

    if-nez v31, :cond_6d

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "TempAudio is null!"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    :cond_6c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    div-int v17, v17, v5

    goto :goto_31

    :cond_6d
    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v5, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v18, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v24, v0

    const/16 v20, 0x0

    move/from16 v21, v17

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/16 v31, 0x0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2d

    :cond_6e
    const/4 v5, 0x0

    goto/16 :goto_2e

    :cond_6f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move/from16 v0, v64

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v64, -0x1

    goto/16 :goto_2f

    :cond_70
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move/from16 v0, v64

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v64, -0x1

    goto/16 :goto_30

    :cond_71
    if-lez v4, :cond_61

    const/4 v5, -0x1

    move/from16 v0, v64

    if-ne v0, v5, :cond_72

    :goto_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->flush()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Seekto next frame  AudioLoopCount :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, ", seektime: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v70

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v47, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v9, 0x1

    move-wide/from16 v0, v70

    invoke-virtual {v5, v0, v1, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_33
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    cmp-long v5, v10, v70

    if-ltz v5, :cond_73

    const/4 v5, 0x1

    :goto_34
    if-nez v5, :cond_46

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    const-wide/16 v20, -0x1

    cmp-long v5, v10, v20

    if-nez v5, :cond_74

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid File!"

    invoke-direct {v5, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_72
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move/from16 v0, v64

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v64, -0x1

    goto :goto_32

    :cond_73
    const/4 v5, 0x0

    goto :goto_34

    :cond_74
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_33

    :cond_75
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio encoder input buffer try again later"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    :cond_76
    aget-object v52, v40, v19

    aget-object v5, v38, v64

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v35

    move-object/from16 v0, v37

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v37

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v5, v5, v17

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    if-gtz v5, :cond_77

    const/4 v5, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v52

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v24, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v30, v0

    const/16 v26, 0x0

    move/from16 v25, v19

    move/from16 v27, v17

    move-wide/from16 v28, v6

    invoke-virtual/range {v24 .. v30}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_2b

    :cond_77
    invoke-virtual/range {v35 .. v35}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v31

    if-nez v31, :cond_78

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "TempAudio is null!"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    :cond_78
    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    div-int v5, v17, v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/16 v55, 0x0

    :goto_35
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    mul-int/lit8 v5, v5, 0x2

    div-int v5, v17, v5

    move/from16 v0, v55

    if-lt v0, v5, :cond_79

    const/4 v5, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    div-int v27, v17, v5

    move-object/from16 v0, v37

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v30, v0

    const/16 v26, 0x0

    move/from16 v25, v19

    move-wide/from16 v28, v6

    invoke-virtual/range {v24 .. v30}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/16 v31, 0x0

    goto/16 :goto_2b

    :cond_79
    mul-int/lit8 v5, v55, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    mul-int v9, v9, v55

    mul-int/lit8 v9, v9, 0x2

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    mul-int/lit8 v5, v55, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    mul-int v9, v9, v55

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    move-object/from16 v0, v31

    invoke-virtual {v0, v5, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v55, v55, 0x1

    goto :goto_35

    :cond_7a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v5, :cond_47

    goto/16 :goto_b

    :cond_7b
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio encoder output buffer try again later"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_7c
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio encoder: output buffers changed"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v44

    goto/16 :goto_b

    :cond_7d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    if-gez v5, :cond_7e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v45

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "audio encoder: output format changed "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_7e
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Audio encoder output format changed after muxer is started."

    invoke-direct {v5, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7f
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_80
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    move/from16 v0, v42

    invoke-virtual {v5, v0, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_b

    :cond_81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "audio encoder writing sample data to muxer  time: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "TranscodeLib"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v43

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v58, v10

    if-gtz v5, :cond_82

    const/4 v5, 0x1

    :goto_36
    if-nez v5, :cond_83

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v9, "Audio time stamps are not in increasing order."

    invoke-direct {v5, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_82
    const/4 v5, 0x0

    goto :goto_36

    :cond_83
    move-object/from16 v0, v43

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v5, v9, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_21

    :cond_84
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio encoder: EOS"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x1

    goto/16 :goto_22

    :cond_85
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v5, :cond_8

    if-eqz v80, :cond_8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_87

    :cond_86
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v80

    invoke-virtual {v5, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_88

    :goto_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v5, v9}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v5}, Landroid/media/MediaMuxer;->start()V

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    goto/16 :goto_c

    :cond_87
    if-nez v45, :cond_86

    goto/16 :goto_c

    :cond_88
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_37

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public startTransRewriting()V
    .locals 76
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v2, :cond_2

    const/16 v34, 0x0

    const/16 v72, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_3

    const/16 v35, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_4

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_5

    const/16 v28, 0x1

    :goto_2
    const/16 v73, 0x0

    const/16 v69, 0x0

    const/16 v65, 0x0

    const/16 v58, -0x1

    const/16 v74, 0x0

    const/16 v63, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    shl-int/lit8 v64, v2, 0x1

    const-wide/16 v54, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v16, 0x0

    cmp-long v2, v10, v16

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    :goto_3
    if-nez v69, :cond_8

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_9

    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTransRewritable:I

    if-eqz v2, :cond_c

    :goto_5
    const-string/jumbo v2, "Rewriting starts"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v39, -0x1

    const/16 v62, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v75

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v36

    const/16 v49, 0x0

    const/16 v48, 0x0

    const/4 v2, -0x1

    move/from16 v0, v75

    if-ne v0, v2, :cond_62

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "Absent valid video track"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v2, "Not starting encoding because it is stopped by user."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    return-void

    :cond_3
    const/16 v35, 0x0

    goto :goto_0

    :cond_4
    const/16 v21, 0x0

    goto :goto_1

    :cond_5
    const/16 v28, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v4, 0x0

    invoke-virtual {v2, v10, v11, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v4, 0x0

    invoke-virtual {v2, v10, v11, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/16 v69, 0x1

    const/16 v28, 0x1

    const-string/jumbo v2, "Abandon TransRewrite. Switch to Rewrite mode."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_7
    const-wide/16 v54, -0x1

    const/16 v69, 0x1

    const/16 v28, 0x1

    const-string/jumbo v2, "Start point has not been updated!"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_8
    if-eqz v28, :cond_0

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const-wide/16 v16, 0x0

    cmp-long v2, v10, v16

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v4, 0x0

    invoke-virtual {v2, v10, v11, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-wide/from16 v16, v0

    cmp-long v2, v10, v16

    if-ltz v2, :cond_a

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_b

    const-string/jumbo v2, "Advance audio..."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_7

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Audio Transcode section: Current position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " mTrimAudioStartUs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_c
    const-string/jumbo v2, "Transcoding start"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v71

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v68

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_14

    const/16 v33, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_15

    const/16 v29, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_16

    const/16 v27, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_17

    const/16 v23, 0x0

    :goto_b
    new-instance v70, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v70 .. v70}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v67, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v67 .. v67}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v32, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v32 .. v32}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v26, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v26 .. v26}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v50, -0x1

    :cond_d
    if-nez v69, :cond_18

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_19

    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_21

    :cond_10
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_30

    :cond_11
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_3b

    :cond_12
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_5e

    :cond_13
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "Encoding abruptly stopped."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_11
    const-string/jumbo v2, "Transcoding Done"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v33

    goto :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v29

    goto :goto_9

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v27

    goto :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v23

    goto :goto_b

    :cond_18
    if-eqz v28, :cond_e

    goto :goto_11

    :cond_19
    if-nez v73, :cond_f

    if-nez v72, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v2, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_1c

    aget-object v40, v66, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    cmp-long v2, v6, v54

    if-lez v2, :cond_1d

    const/4 v2, 0x1

    :goto_12
    if-nez v2, :cond_20

    if-gez v5, :cond_1e

    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v73, 0x0

    :goto_14
    const-string/jumbo v2, "Move forward to locate: Video"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_15
    if-eqz v73, :cond_f

    const-string/jumbo v2, "video extractor: EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    move v9, v3

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_c

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_1a

    goto/16 :goto_c

    :cond_1c
    const-string/jumbo v2, "no video decoder input buffer"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_1d
    const/4 v2, 0x0

    goto :goto_12

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_13

    :cond_1f
    const/16 v73, 0x1

    goto :goto_14

    :cond_20
    const/16 v73, 0x1

    goto :goto_15

    :cond_21
    if-nez v65, :cond_10

    if-nez v72, :cond_24

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v67

    invoke-virtual {v2, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v42

    const/4 v2, -0x1

    move/from16 v0, v42

    if-eq v0, v2, :cond_25

    const/4 v2, -0x3

    move/from16 v0, v42

    if-eq v0, v2, :cond_26

    const/4 v2, -0x2

    move/from16 v0, v42

    if-eq v0, v2, :cond_10

    aget-object v41, v68, v42

    move-object/from16 v0, v67

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video decoder: returned buffer for time "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v67

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, v67

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_28

    const/16 v60, 0x0

    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move/from16 v0, v42

    move/from16 v1, v60

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-nez v60, :cond_29

    :cond_23
    :goto_17
    move-object/from16 v0, v67

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_10

    const-string/jumbo v2, "video decoder: EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v65, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto/16 :goto_d

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_22

    goto/16 :goto_d

    :cond_25
    const-string/jumbo v2, "no video decoder output buffer"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_26
    const-string/jumbo v2, "video decoder: output buffers changed"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v68

    goto/16 :goto_d

    :cond_27
    const-string/jumbo v2, "video decoder: codec config buffer"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v42

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_d

    :cond_28
    const/16 v60, 0x1

    goto :goto_16

    :cond_29
    const-string/jumbo v2, "output surface: await new image"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-string/jumbo v2, "output surface: draw image"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "presentationTimeUs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v67

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "StartPnt: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, v67

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    move-wide/from16 v16, v0

    cmp-long v2, v10, v16

    if-gez v2, :cond_2d

    const/4 v2, 0x1

    :goto_18
    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSkipFrames:Z

    if-nez v2, :cond_2e

    :goto_19
    const/16 v63, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, v67

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v16, 0x3e8

    mul-long v10, v10, v16

    invoke-virtual {v2, v10, v11}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    const-string/jumbo v2, "input surface: swap buffers"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    const-string/jumbo v2, "video encoder: notified of new frame"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    add-int/lit8 v74, v74, 0x1

    :cond_2a
    add-int/lit8 v63, v63, 0x1

    goto/16 :goto_17

    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_c

    :catch_0
    move-exception v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v2, :cond_2f

    :cond_2c
    :goto_1a
    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v0, v59

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_2d
    const/4 v2, 0x0

    goto :goto_18

    :cond_2e
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    rem-int v2, v63, v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_2a

    goto :goto_19

    :cond_2f
    if-eqz v56, :cond_2c

    const-string/jumbo v2, "Surface frame wait timed out"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_1a

    :cond_30
    if-nez v69, :cond_11

    if-nez v72, :cond_32

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v70

    invoke-virtual {v2, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v47

    const/4 v2, -0x1

    move/from16 v0, v47

    if-eq v0, v2, :cond_33

    const/4 v2, -0x3

    move/from16 v0, v47

    if-eq v0, v2, :cond_34

    const/4 v2, -0x2

    move/from16 v0, v47

    if-eq v0, v2, :cond_35

    if-ltz v47, :cond_37

    aget-object v46, v71, v47

    move-object/from16 v0, v70

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_38

    move-object/from16 v0, v70

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_39

    :goto_1b
    move-object/from16 v0, v70

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3a

    :goto_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v47

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_e

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_31

    goto/16 :goto_e

    :cond_33
    const-string/jumbo v2, "no video encoder output buffer"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_34
    const-string/jumbo v2, "video encoder: output buffers changed"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v71

    goto/16 :goto_e

    :cond_35
    const-string/jumbo v2, "video encoder: output format changed"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    if-gez v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v72

    goto/16 :goto_e

    :cond_36
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Video encoder output format changed after muxer has started"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_37
    const-string/jumbo v2, "Unexpected result from video encoder dequeue output format."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_38
    const-string/jumbo v2, "video encoder: codec config buffer"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v47

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_e

    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video encoder: writing sample data timestamp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v70

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    move-object/from16 v0, v46

    move-object/from16 v1, v70

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_1b

    :cond_3a
    const-string/jumbo v2, "video encoder: EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v69, 0x1

    goto/16 :goto_1c

    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_40

    :cond_3c
    :goto_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_48

    :cond_3d
    :goto_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_50

    :cond_3e
    :goto_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v2, :cond_12

    if-nez v28, :cond_12

    if-nez v34, :cond_53

    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v31

    const/4 v2, -0x1

    move/from16 v0, v31

    if-eq v0, v2, :cond_54

    const/4 v2, -0x3

    move/from16 v0, v31

    if-eq v0, v2, :cond_55

    const/4 v2, -0x2

    move/from16 v0, v31

    if-eq v0, v2, :cond_56

    if-ltz v31, :cond_58

    aget-object v30, v33, v31

    move-object/from16 v0, v32

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_59

    move-object/from16 v0, v32

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_5a

    :goto_20
    move-object/from16 v0, v32

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_5d

    :goto_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v31

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_f

    :cond_40
    if-nez v35, :cond_3c

    if-nez v34, :cond_42

    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v2, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    const/4 v2, -0x1

    if-eq v9, v2, :cond_43

    aget-object v22, v23, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Audio psntTimeUs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", TrimTCEndTime "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v54

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    cmp-long v2, v12, v54

    if-lez v2, :cond_44

    const/4 v2, 0x1

    :goto_22
    if-nez v2, :cond_47

    if-gez v5, :cond_45

    :goto_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    if-eqz v2, :cond_46

    const/16 v35, 0x0

    :goto_24
    const-string/jumbo v2, "Move forward to locate: Audio"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_25
    if-eqz v35, :cond_3c

    const-string/jumbo v2, "audio decoder sending EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x4

    move v15, v9

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_1d

    :cond_42
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_41

    goto/16 :goto_1d

    :cond_43
    const-string/jumbo v2, "audio decoder input try again later"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_44
    const/4 v2, 0x0

    goto :goto_22

    :cond_45
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v10, 0x0

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v14

    move v11, v5

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_23

    :cond_46
    const/16 v35, 0x1

    goto :goto_24

    :cond_47
    const/16 v35, 0x1

    goto :goto_25

    :cond_48
    if-nez v21, :cond_3d

    const/4 v2, -0x1

    move/from16 v0, v58

    if-ne v0, v2, :cond_3d

    if-nez v34, :cond_4a

    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v25

    const/4 v2, -0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_4b

    const/4 v2, -0x3

    move/from16 v0, v25

    if-eq v0, v2, :cond_4c

    const/4 v2, -0x2

    move/from16 v0, v25

    if-eq v0, v2, :cond_4d

    if-ltz v25, :cond_4e

    move-object/from16 v0, v26

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4f

    move/from16 v58, v25

    goto/16 :goto_1e

    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_49

    goto/16 :goto_1e

    :cond_4b
    const-string/jumbo v2, "audio decoder output buffer try again later"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_4c
    const-string/jumbo v2, "audio decoder: output buffers changed"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v27

    goto/16 :goto_1e

    :cond_4d
    const-string/jumbo v2, "audio decoder: output format changed: "

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_4e
    const-string/jumbo v2, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_4f
    const-string/jumbo v2, "audio decoder: codec config buffer"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v25

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_1e

    :cond_50
    const/4 v2, -0x1

    move/from16 v0, v58

    if-eq v0, v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v2, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v15

    const/4 v2, -0x1

    if-eq v15, v2, :cond_51

    aget-object v45, v29, v15

    move-object/from16 v0, v26

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v26

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-gez v5, :cond_52

    :goto_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v58

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v58, -0x1

    move-object/from16 v0, v26

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "audio decoder: EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v21, 0x1

    goto/16 :goto_1f

    :cond_51
    const-string/jumbo v2, "audio encoder input buffer try again later"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_52
    aget-object v2, v27, v58

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v24

    move-object/from16 v0, v26

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v26

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v2, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    move-object/from16 v0, v26

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v20, v0

    const/16 v16, 0x0

    move/from16 v17, v5

    move-wide/from16 v18, v6

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_26

    :cond_53
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_3f

    goto/16 :goto_f

    :cond_54
    const-string/jumbo v2, "audio encoder output buffer try again later"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_55
    const-string/jumbo v2, "audio encoder: output buffers changed"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v33

    goto/16 :goto_f

    :cond_56
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    if-gez v2, :cond_57

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "audio encoder: output format changed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_57
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Audio encoder output format changed after muxer is started."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_58
    const-string/jumbo v2, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_59
    const-string/jumbo v2, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v31

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_f

    :cond_5a
    move-object/from16 v0, v32

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v50, v10

    if-gtz v2, :cond_5b

    const/4 v2, 0x1

    :goto_27
    if-nez v2, :cond_5c

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "Audio time stamps are not in increasing order."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5b
    const/4 v2, 0x0

    goto :goto_27

    :cond_5c
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_20

    :cond_5d
    const-string/jumbo v2, "audio encoder: EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v28, 0x1

    goto/16 :goto_21

    :cond_5e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_13

    if-eqz v72, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_60

    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v72

    invoke-virtual {v2, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_61

    :goto_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v2, v4}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    goto/16 :goto_10

    :cond_60
    if-nez v34, :cond_5f

    goto/16 :goto_10

    :cond_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_28

    :cond_62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v75

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v49

    const/4 v2, -0x1

    move/from16 v0, v36

    if-ne v0, v2, :cond_65

    :goto_29
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-eqz v2, :cond_66

    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v39

    const/16 v57, 0x0

    const/4 v2, -0x1

    move/from16 v0, v36

    if-eq v0, v2, :cond_69

    :goto_2b
    invoke-static/range {v39 .. v39}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v44

    new-instance v38, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v38 .. v38}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    move-object/from16 v0, v38

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    :goto_2c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_6a

    :cond_63
    const/4 v2, -0x1

    move/from16 v0, v36

    if-ne v0, v2, :cond_6e

    :cond_64
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_72

    :goto_2d
    return-void

    :cond_65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v36

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v48

    goto :goto_29

    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v49

    invoke-virtual {v2, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    if-nez v48, :cond_68

    :cond_67
    const/16 v36, -0x1

    :goto_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v2, v4}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    goto :goto_2a

    :cond_68
    const-string/jumbo v2, "mime"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "audio/unknown"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_2e

    :cond_69
    const/16 v61, 0x1

    goto/16 :goto_2b

    :cond_6a
    if-nez v62, :cond_63

    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    move-object/from16 v0, v38

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v38

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v2, :cond_6b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    move-object/from16 v0, v38

    iput-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v10, -0x1

    cmp-long v2, v52, v10

    if-eqz v2, :cond_6d

    move-object/from16 v0, v38

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v10, v52

    if-gtz v2, :cond_6c

    const/4 v2, 0x1

    :goto_2f
    if-nez v2, :cond_6d

    const/16 v62, 0x1

    const-string/jumbo v2, "sawEOS: true: V"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_2c

    :cond_6b
    const-string/jumbo v2, "saw input EOS: Video"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v62, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_2c

    :cond_6c
    const/4 v2, 0x0

    goto :goto_2f

    :cond_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    move-object/from16 v0, v38

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_2c

    :cond_6e
    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v43

    new-instance v37, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v37 .. v37}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    move-object/from16 v0, v37

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    :goto_30
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v2, :cond_64

    if-nez v61, :cond_64

    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    move-object/from16 v0, v37

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v37

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v2, :cond_6f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    move-object/from16 v0, v37

    iput-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v10, -0x1

    cmp-long v2, v52, v10

    if-eqz v2, :cond_71

    move-object/from16 v0, v37

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v10, v52

    if-gtz v2, :cond_70

    const/4 v2, 0x1

    :goto_31
    if-nez v2, :cond_71

    const/16 v61, 0x1

    const-string/jumbo v2, "sawEOS: true: A"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_30

    :cond_6f
    const-string/jumbo v2, "saw input EOS: Audio"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v61, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_30

    :cond_70
    const/4 v2, 0x0

    goto :goto_31

    :cond_71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    move-object/from16 v0, v37

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    move-object/from16 v0, v43

    move-object/from16 v1, v37

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_30

    :cond_72
    const-string/jumbo v2, "Rewriting finished"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_2d
.end method

.method public stop()V
    .locals 5

    const-string/jumbo v3, "TranscodeLib"

    const-string/jumbo v4, "Stop method called "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-nez v3, :cond_0

    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    iget-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    :try_start_1
    const-string/jumbo v3, "TranscodeLib"

    const-string/jumbo v4, "Calling wait on stop lock."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v3}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->notifyFrameSyncObject()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v0

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "TranscodeLib"

    const-string/jumbo v4, "Stop lock interrupted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
