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

.field private static final TIMEOUT_USEC:J = 0x2710L


# instance fields
.field private formatupdated:Z

.field private mAudioExtractor:Landroid/media/MediaExtractor;

.field private mCopyAudio:Z

.field private volatile mEncoding:Z

.field private mInputFilePath:Ljava/lang/String;

.field private mInputOrientationDegrees:I

.field private mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

.field private mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

.field private mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

.field private mStopLock:Ljava/lang/Object;

.field private mTrimAudioEndUs:J

.field private mTrimAudioStartUs:J

.field private mTrimVideoEndUs:J

.field private mTrimVideoStartUs:J

.field private mVideoExtractor:Landroid/media/MediaExtractor;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    return-void
.end method

.method private CheckVideoCodec(IILjava/lang/String;Z)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    move v0, v1

    :goto_0
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string/jumbo v4, "width"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    :try_start_1
    const-string/jumbo v4, "height"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    :try_start_2
    const-string/jumbo v6, "error-type"

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    move v2, v1

    :goto_1
    if-nez v3, :cond_4

    :goto_2
    if-nez v2, :cond_8

    if-eqz p4, :cond_9

    :cond_0
    if-gtz v5, :cond_a

    :cond_1
    const-string/jumbo v0, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resolution Error appear : width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", height= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->GetCodecResource(II)I

    move-result v0

    goto :goto_0

    :cond_3
    :try_start_3
    const-string/jumbo v6, "error-type"

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catch_0
    move-exception v2

    move v4, v1

    move v5, v1

    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_6

    :cond_5
    :goto_4
    move v2, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :catch_1
    move-exception v2

    move v4, v1

    move v5, v1

    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :catchall_0
    move-exception v0

    if-nez v3, :cond_7

    :goto_6
    throw v0

    :cond_7
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto :goto_6

    :cond_8
    const-string/jumbo v0, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Extactor Error appear : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    if-ltz v0, :cond_0

    mul-int v2, v5, v4

    if-ge v0, v2, :cond_0

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v2, "Codec resource is not enough"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a
    if-lez v4, :cond_1

    const/4 v0, 0x1

    return v0

    :catch_2
    move-exception v2

    move v4, v1

    goto :goto_5

    :catch_3
    move-exception v2

    goto :goto_5

    :catch_4
    move-exception v2

    move v4, v1

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_3
.end method

.method private CheckVideoFormat(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    :cond_0
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v4, "Video Format is not supported"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    if-nez v1, :cond_3

    :goto_2
    return v0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_4

    :goto_4
    if-nez v1, :cond_5

    :goto_5
    move v0, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_6
    if-nez v2, :cond_6

    :goto_7
    if-nez v1, :cond_7

    :goto_8
    throw v0

    :cond_6
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method static synthetic access$002(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    return p1
.end method

.method public static checkRewritable(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_1

    const-string/jumbo v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Number of tracks: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v1

    if-eq v1, v5, :cond_4

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string/jumbo v4, "mime"

    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "video/avc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    move v1, v2

    move v4, v2

    :goto_2
    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    if-eq v6, v5, :cond_6

    invoke-virtual {v0, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v6, "mime"

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "audio/mp4a-latm"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    move v0, v2

    move v6, v2

    :goto_3
    if-nez v1, :cond_8

    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v4, "Valid video track absent"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    move v4, v3

    goto :goto_2

    :cond_5
    const-string/jumbo v4, "video/mp4v-es"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "video/3gpp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "video/hevc"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v4, "Unsupported mime type: video"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    move v4, v3

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v6, "Valid audio track absent"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    move v6, v3

    goto :goto_3

    :cond_7
    const-string/jumbo v6, "audio/3gpp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "audio/amr-wb"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v6, "Unsuppported mime type: audio"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v6, v3

    goto :goto_3

    :cond_8
    if-eqz v4, :cond_0

    if-nez v0, :cond_9

    move v3, v2

    goto/16 :goto_0

    :cond_9
    if-eqz v6, :cond_0

    move v3, v2

    goto/16 :goto_0
.end method

.method public static findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v5, v1, [B

    const/4 v1, 0x4

    new-array v6, v1, [B

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v1, 0x5

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "mdia"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "minf"

    aput-object v2, v7, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moov"

    aput-object v2, v7, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "stbl"

    aput-object v2, v7, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "trak"

    aput-object v2, v7, v1

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v4, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, v8

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "filePointer: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const/4 v2, 0x0

    :try_start_2
    array-length v10, v5

    invoke-virtual {v4, v5, v2, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->unsignedIntToLong([B)J

    move-result-wide v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Atom Size: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, 0x0

    array-length v12, v6

    invoke-virtual {v4, v6, v2, v12}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Atom Box: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-static {v7, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-wide/16 v12, 0x1

    cmp-long v2, v10, v12

    if-nez v2, :cond_4

    const-wide/16 v10, 0x8

    add-long/2addr v10, v0

    invoke-virtual {v4, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x8

    new-array v2, v2, [B

    const/4 v10, 0x0

    array-length v11, v2

    invoke-virtual {v4, v2, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v10}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    add-long/2addr v0, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "64bit: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0

    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_1
    move v0, v3

    :goto_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    return v0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Found parent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, " move to position: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-wide/16 v10, 0x8

    add-long/2addr v0, v10

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-nez v2, :cond_5

    const-string/jumbo v0, "filePointer does not go forward. Exit."

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    add-long/2addr v0, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "move: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v12, " atomsize "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto/16 :goto_3
.end method

.method public static getMaxEncodingDuration(IIII)I
    .locals 12

    const-wide/16 v10, 0x3e8

    const-wide/16 v8, 0x8

    const/16 v3, 0x64

    const/4 v2, 0x0

    const/16 v6, 0x3e8

    int-to-float v0, p0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v4, v0

    mul-int v0, p1, p2

    div-int/lit16 v0, v0, 0x100

    if-lt v0, v3, :cond_1

    if-gt v0, v3, :cond_2

    :cond_0
    if-gt v0, v6, :cond_3

    move v0, v2

    :goto_0
    const/4 v1, 0x1

    if-eq p3, v1, :cond_4

    mul-long/2addr v4, v8

    mul-long/2addr v4, v10

    add-int/lit8 v0, v0, 0x40

    int-to-long v0, v0

    div-long v0, v4, v0

    :goto_1
    const-string/jumbo v3, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " height "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " audiocodec "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " maxdur "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v0, v0

    if-lt v0, v6, :cond_5

    return v0

    :cond_1
    const/16 v0, 0x40

    goto :goto_0

    :cond_2
    if-ge v0, v6, :cond_0

    const/16 v0, 0x96

    goto :goto_0

    :cond_3
    const/16 v0, 0x15e

    goto :goto_0

    :cond_4
    mul-long/2addr v4, v8

    mul-long/2addr v4, v10

    add-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    div-long v0, v4, v0

    goto :goto_1

    :cond_5
    return v2
.end method

.method private getVideoSampleSize(Landroid/media/MediaFormat;)I
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
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

.method public static isSupportedFormat(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static parseAvcProfile([B)I
    .locals 1

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    :sswitch_1
    const/4 v0, 0x2

    return v0

    :sswitch_2
    const/4 v0, 0x4

    return v0

    :sswitch_3
    const/16 v0, 0x8

    return v0

    :sswitch_4
    const/16 v0, 0x10

    return v0

    :sswitch_5
    const/16 v0, 0x20

    return v0

    :sswitch_6
    const/16 v0, 0x40

    return v0

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

.method private static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    move v0, v1

    :goto_0
    iget-object v3, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    const-string/jumbo v0, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "couldn\'t find a good color format for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v3, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo;->isRecognizedFormat(I)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "colorFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    return v3
.end method

.method private static final unsignedIntToLong([B)J
    .locals 5

    const/16 v4, 0x8

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    or-long/2addr v0, v2

    shl-long/2addr v0, v4

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    shl-long/2addr v0, v4

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    shl-long/2addr v0, v4

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public checkTransRewritable(Landroid/media/MediaFormat;ILjava/lang/String;)I
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "height"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v5}, Lcom/samsung/android/transcode/util/CodecsHelper;->GetCodecResource(II)I

    move-result v6

    if-gez v6, :cond_1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "ctts"

    invoke-static {p3, v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->findAtom(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eq v0, v4, :cond_2

    :goto_0
    const-string/jumbo v0, "video/avc"

    const-string/jumbo v5, "mime"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "video/mp4v-es"

    const-string/jumbo v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "video/3gpp"

    const-string/jumbo v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to detect csd-0: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "mime"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2

    :cond_1
    mul-int/2addr v0, v5

    if-ge v6, v0, :cond_0

    const-string/jumbo v0, "Overshoot capability"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    return v4

    :cond_2
    :try_start_1
    const-string/jumbo v0, "ctts detected"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "csd-0"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "Unable to detect csd-0 or csd-1"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "csd-0"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    new-array v5, v5, [B

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    new-array v6, v6, [B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    array-length v7, v6

    invoke-virtual {v0, v6, v2, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo;->parseAvcProfile([B)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Profile: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/transcode/core/EncodeVideo;->getLocalEncHeader(I)Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    if-eqz v1, :cond_6

    :goto_2
    const-string/jumbo v0, ""

    array-length v7, v6

    move-object v5, v0

    move v0, v2

    :goto_3
    if-lt v0, v7, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TargetSPS: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v0, v2

    :goto_4
    :try_start_3
    array-length v5, v6
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    if-lt v0, v5, :cond_8

    move v0, v3

    :goto_5
    const-string/jumbo v3, "csd-1"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_5
    :goto_6
    move v2, v0

    goto/16 :goto_1

    :cond_6
    :try_start_4
    const-string/jumbo v0, "localSPS is null"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_7
    aget-byte v8, v6, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "i: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v7, v6, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_sps:[B

    aget-byte v7, v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    aget-byte v5, v6, v0

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_sps:[B

    aget-byte v7, v7, v0

    if-ne v5, v7, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v0, "SPS does not match"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    move v0, v4

    goto/16 :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2

    :cond_a
    const-string/jumbo v3, "csd-1"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    new-array v6, v5, [B

    invoke-virtual {v3, v10}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    array-length v5, v6

    invoke-virtual {v3, v6, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const-string/jumbo v3, ""

    array-length v7, v6

    move-object v5, v3

    move v3, v2

    :goto_7
    if-lt v3, v7, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "TargetPPS: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v3, v2

    :goto_8
    :try_start_6
    array-length v5, v6

    if-ge v3, v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "i: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v7, v6, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_pps:[B

    aget-byte v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    aget-byte v5, v6, v3

    iget-object v7, v1, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_pps:[B

    aget-byte v7, v7, v3
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3

    if-ne v5, v7, :cond_c

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    aget-byte v8, v6, v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "0x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_c
    :try_start_7
    const-string/jumbo v0, "PPS does not match"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3

    move v0, v4

    goto/16 :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2

    :cond_d
    const-string/jumbo v0, "Mpeg4: Rewrite"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v2, v4

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v0, "3gp: Rewrite"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v2, v4

    goto/16 :goto_1
.end method

.method public getLocalEncHeader(I)Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const-string/jumbo v3, "bitrate"

    iget v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "frame-rate"

    invoke-virtual {v2, v3, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "color-format"

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "i-frame-interval"

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "profile"

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Local video format "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v7, v7, v12}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v11

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inputBufferIndex A: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    if-gez v1, :cond_0

    :goto_1
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "outputBufferIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    move v3, v1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "outputBufferIndex 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v3, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :goto_3
    return-object v7

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "codec cannot be created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    move-object v0, v7

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type is not a valid mime type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v0

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "type is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v7

    goto/16 :goto_0

    :cond_0
    :try_start_2
    aget-object v2, v10, v1

    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v9}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inputBufferIndex G4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    aget-object v2, v10, v1

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "inputBufferIndex G5: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto/16 :goto_3

    :cond_1
    const-wide/16 v2, 0x0

    :try_start_4
    invoke-virtual {v0, v4, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    move v3, v1

    goto/16 :goto_2

    :cond_2
    aget-object v1, v11, v3

    iget v2, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v2, v2, [B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bufferInfo.size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    if-eq v5, v12, :cond_4

    const-string/jumbo v5, "Invalid start pattern"

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :cond_3
    :goto_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-ne v5, v12, :cond_3

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ppsIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    add-int/lit8 v5, v1, -0x8

    new-array v5, v5, [B

    const/4 v6, 0x4

    const/4 v9, 0x0

    array-length v10, v5

    invoke-static {v2, v6, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v2

    sub-int/2addr v6, v1

    new-array v6, v6, [B

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v2, v1, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v9, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;

    const/4 v1, 0x0

    invoke-direct {v9, p0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;Lcom/samsung/android/transcode/core/EncodeVideo$1;)V

    array-length v1, v5

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v9, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_sps:[B

    array-length v1, v6

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v9, Lcom/samsung/android/transcode/core/EncodeVideo$SpsPps;->_pps:[B

    const-string/jumbo v1, ""

    array-length v10, v5

    move-object v2, v1

    move v1, v8

    :goto_6
    if-lt v1, v10, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Local SPS: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-string/jumbo v1, ""

    array-length v5, v6

    move-object v2, v1

    move v1, v8

    :goto_7
    if-lt v1, v5, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Local PPS: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-object v9

    :cond_4
    :try_start_5
    const-string/jumbo v5, "start pattern match"

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    throw v1

    :cond_5
    :try_start_6
    aget-byte v11, v5, v1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v12, "0x"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v11, " "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    aget-byte v8, v6, v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v10, "0x"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7
.end method

.method public getOutputFileSize()I
    .locals 14

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v4, v0, v12

    if-nez v4, :cond_0

    const-string/jumbo v0, "durationUs"

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v10, v0

    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    cmp-long v0, v0, v12

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    if-eq v0, v1, :cond_2

    :goto_2
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v4, v10, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    div-int/lit16 v6, v0, 0x3e8

    iget v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v8, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    :goto_3
    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v2, v10, v2

    long-to-double v2, v2

    const-wide v4, 0x415e848000000000L    # 8000000.0

    div-double/2addr v2, v4

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    cmp-long v1, v2, v12

    if-nez v1, :cond_4

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :cond_0
    move-wide v10, v0

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_1

    :cond_2
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v9

    :cond_3
    :try_start_1
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/Encode;->suggestBitRate(II)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_3

    :cond_4
    return v0

    :catch_1
    move-exception v0

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "NullPointerException appear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;)V
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

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

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

    const-string/jumbo v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-lez p2, :cond_0

    if-lez p3, :cond_1

    if-eqz p1, :cond_2

    if-eqz p4, :cond_3

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

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

    const-string/jumbo v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/transcode/core/Encode$EncodeResolution;->isSupportedResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p2, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->fillResolutionRect(ILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/samsung/android/transcode/core/EncodeVideo;->initialize(Ljava/lang/String;IILjava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid resolution value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v14, 0x1

    const/4 v0, 0x0

    const/4 v10, -0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v1

    if-eq v1, v10, :cond_5

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    const-string/jumbo v1, "audio/unknown"

    const-string/jumbo v2, "mime"

    invoke-virtual {v11, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "error-type"

    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_0
    iput-boolean v14, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-string/jumbo v1, "durationUs"

    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "mTrimAudioEndUs was 0 but updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio input format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    const-string/jumbo v1, "channel-count"

    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    const-string/jumbo v1, "mime"

    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "audio/mp4a-latm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_2
    :goto_0
    :try_start_0
    const-string/jumbo v0, "max-input-size"

    invoke-virtual {v11, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    if-nez v1, :cond_17

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    if-nez v0, :cond_18

    :goto_3
    const-string/jumbo v0, "bitrate"

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "aac-profile"

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioAACProfile:I

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v0, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio output format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-static {v11}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    return-void

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-boolean v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_6
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Audio mime type is unknown. Ignore audio track."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_7
    const-string/jumbo v1, "error-type"

    invoke-virtual {v11, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio codec error appear : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_8
    :try_start_1
    invoke-static {v11}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v1, :cond_a

    :goto_4
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v1, :cond_b

    move-object v7, v0

    :goto_5
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v13, Lcom/samsung/android/transcode/core/EncodeVideo$1;

    invoke-direct {v13, p0}, Lcom/samsung/android/transcode/core/EncodeVideo$1;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    move v9, v10

    :cond_9
    :goto_6
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_16

    :goto_7
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v7, v0

    goto :goto_5

    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-eqz v0, :cond_e

    :cond_d
    :goto_8
    const/4 v0, 0x3

    invoke-static {v0, v13}, Lcom/samsung/android/transcode/util/CodecsHelper;->scheduleAfter(ILjava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-nez v0, :cond_9

    if-ne v9, v10, :cond_9

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v12, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-eq v0, v10, :cond_11

    const/4 v1, -0x3

    if-eq v0, v1, :cond_12

    const/4 v1, -0x2

    if-eq v0, v1, :cond_13

    if-ltz v0, :cond_14

    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_15

    move v9, v0

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    if-eq v1, v10, :cond_f

    aget-object v0, v7, v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    if-gtz v3, :cond_10

    if-ne v3, v10, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    const-string/jumbo v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio buffer is empty, size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "audio decoder input try again later while preparing audio codec"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_8

    :cond_11
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "audio decoder output buffer try again later while preparing audio codec"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_12
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "audio decoder: output buffers changed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    goto/16 :goto_6

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    const-string/jumbo v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "audio decoder: output format changed: SampleRate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",ChannelCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    goto/16 :goto_6

    :cond_14
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_15
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "audio decoder: codec config buffer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    :cond_16
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7

    :catch_2
    move-exception v0

    :try_start_5
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input audio decoder."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_7

    :catch_3
    move-exception v0

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Audio max input size not defined"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto/16 :goto_1

    :cond_17
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    iput v14, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v2, "max-input-size"

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/16 :goto_3
.end method

.method protected prepareVideoCodec()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v1, :cond_6

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v11

    const-string/jumbo v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "input video format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    const-string/jumbo v0, "durationUs"

    invoke-virtual {v11, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "mTrimVideoEndUs was 0 but updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_8

    move v0, v10

    :goto_2
    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    if-eqz v0, :cond_9

    :cond_2
    :goto_3
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    if-nez v0, :cond_a

    :goto_4
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    div-int/lit16 v6, v0, 0x3e8

    iget v7, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v8, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    :goto_5
    :try_start_1
    const-string/jumbo v0, "frame-rate"

    invoke-virtual {v11, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    :goto_6
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v2, "video/avc"

    if-eq v1, v2, :cond_c

    :cond_3
    :goto_7
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    if-nez v1, :cond_d

    :goto_8
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    if-gt v0, v1, :cond_e

    :goto_9
    const-string/jumbo v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOutputVideoFrameRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "bitrate"

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "frame-rate"

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "i-frame-interval"

    iget v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "TranscodeLib"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "output video format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v12, v12, v10}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v0, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    new-instance v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z

    if-nez v0, :cond_f

    :goto_a
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_10

    return-void

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mInputFilePath is NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :goto_b
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v9

    goto :goto_b

    :sswitch_1
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-nez v1, :cond_7

    :goto_c
    throw v0

    :sswitch_2
    const/16 v0, 0xb4

    :try_start_6
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x10e

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_c

    :cond_8
    move v0, v9

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v1, "video/avc"

    if-ne v0, v1, :cond_2

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    goto/16 :goto_3

    :cond_a
    const/16 v0, 0x7d00

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    goto/16 :goto_4

    :cond_b
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/transcode/core/Encode;->suggestBitRate(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move v0, v9

    goto/16 :goto_6

    :cond_c
    if-lez v0, :cond_3

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    goto/16 :goto_7

    :cond_d
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    goto/16 :goto_8

    :cond_e
    iput-boolean v10, p0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    goto/16 :goto_9

    :cond_f
    new-instance v0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-direct {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->prepare()I

    goto/16 :goto_a

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "can\'t set VideoDecoder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected prepareVideoCodecNeo()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x18

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v2, :cond_6

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "input video format: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    const-string/jumbo v0, "durationUs"

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-string/jumbo v0, "mTrimVideoEndUs was 0 but updated"

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :cond_1
    :try_start_1
    const-string/jumbo v0, "frame-rate"

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v3, "video/avc"

    if-eq v1, v3, :cond_8

    :cond_2
    :goto_3
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    if-gt v0, v1, :cond_9

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mOutputVideoFrameRate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkRewritable(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "askRewritable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    if-ne v1, v9, :cond_a

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->checkTransRewritable(Landroid/media/MediaFormat;ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTransRewritable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_5
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    if-eq v0, v10, :cond_b

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    invoke-static {v0, v1, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "color-format"

    const v3, 0x7f000789

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "bitrate"

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoBitRate:I

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "frame-rate"

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "i-frame-interval"

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    if-ne v1, v10, :cond_c

    const-string/jumbo v1, "Skip video profile setup"

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "output video format "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    if-ne v1, v9, :cond_d

    :cond_4
    return-void

    :cond_5
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    :goto_7
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/4 v0, 0x0

    :try_start_3
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_7

    :sswitch_1
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-nez v2, :cond_7

    :goto_8
    throw v0

    :sswitch_2
    const/16 v0, 0xb4

    :try_start_6
    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x10e

    iput v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_8

    :catch_2
    move-exception v0

    move v0, v1

    goto/16 :goto_2

    :cond_8
    if-lez v0, :cond_2

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    goto/16 :goto_3

    :cond_9
    iput-boolean v9, p0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z

    int-to-float v1, v0

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    goto/16 :goto_4

    :cond_a
    iget v1, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    goto/16 :goto_5

    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to handle input file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string/jumbo v1, "profile"

    iget v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v8, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v0, Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    new-instance v0, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    iget v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "can\'t set VideoDecoder"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

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

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareVideoCodecNeo()V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareAudioCodec()V

    return-void
.end method

.method protected release()V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "releasing encoder objects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-nez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    if-nez v0, :cond_5

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    if-nez v0, :cond_6

    :cond_0
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    if-nez v0, :cond_7

    :goto_6
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_8

    :goto_7
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_9

    :goto_8
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-nez v0, :cond_a

    :goto_9
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_b

    :goto_a
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing output video encoder."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input video decoder."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_8
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing video extractor."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :cond_4
    :try_start_9
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    :try_start_a
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing outputSurface."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    :cond_5
    :try_start_b
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    :catch_4
    move-exception v0

    :try_start_c
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing logo renderer."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    :cond_7
    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_6

    :catch_5
    move-exception v0

    :try_start_e
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input surface."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    :cond_8
    :try_start_f
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_7

    :catch_6
    move-exception v0

    :try_start_10
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing output audio encoder."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_7

    :cond_9
    :try_start_11
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_8

    :catch_7
    move-exception v0

    :try_start_12
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input audio decoder."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_8

    :cond_a
    :try_start_13
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_9

    :catch_8
    move-exception v0

    :try_start_14
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing audio extractor."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_9

    :cond_b
    :try_start_15
    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v0, :cond_c

    :goto_b
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_a

    :catch_9
    move-exception v0

    :try_start_16
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing muxer."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_a

    :cond_c
    :try_start_17
    iget-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_b

    :catchall_1
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    throw v0
.end method

.method public setEncodingCodecs(II)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoCodecType is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid video codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "video/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    :goto_0
    packed-switch p2, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid audio codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string/jumbo v0, "video/avc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "audio/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    :goto_1
    return-void

    :pswitch_3
    const-string/jumbo v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

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
    .locals 7

    const/16 v6, 0xc8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_2

    const-string/jumbo v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "max output size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    if-lt v0, v6, :cond_3

    :cond_1
    :goto_0
    const-string/jumbo v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMMSMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size cannot be 0 or lesser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    if-ge v0, v6, :cond_1

    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    goto :goto_0
.end method

.method public setTrimTime(JJ)V
    .locals 9

    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmp-long v2, p1, v4

    if-ltz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    cmp-long v2, p3, v4

    if-ltz v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "end time cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    cmp-long v2, p1, p3

    if-gtz v2, :cond_4

    :goto_2
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start time cannot be more than end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    cmp-long v0, p1, p3

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "endUs cannot be equal to startUs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    mul-long v0, p1, v6

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    mul-long v0, p3, v6

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    return-void
.end method

.method protected startEncoding()V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_9

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_a

    const/4 v5, 0x0

    move-object v11, v5

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_b

    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v6, :cond_c

    const/4 v6, 0x0

    move-object v12, v6

    :goto_3
    new-instance v31, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v31 .. v31}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v32, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v32 .. v32}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v33, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v33 .. v33}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v34, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v34 .. v34}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v28, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v6, :cond_d

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v7, :cond_e

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v8, :cond_f

    const/4 v8, 0x1

    :goto_6
    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v22, -0x1

    const/4 v15, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    shl-int/lit8 v35, v9, 0x1

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z

    if-nez v9, :cond_10

    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v9, v24, v26

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    move-wide/from16 v24, v0

    const/4 v10, 0x0

    move-wide/from16 v0, v24

    invoke-virtual {v9, v0, v1, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v9, :cond_11

    :cond_1
    const-wide/16 v26, -0x1

    move/from16 v25, v8

    move/from16 v24, v7

    move/from16 v21, v6

    move-object/from16 v23, v5

    move-object/from16 v29, v4

    move v4, v13

    :goto_8
    if-nez v18, :cond_14

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_15

    :cond_3
    :goto_9
    move v13, v4

    :cond_4
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_1d

    :cond_5
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_30

    :cond_6
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_3b

    move/from16 v4, v24

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v7, :cond_64

    :cond_7
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v7, :cond_68

    move/from16 v24, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move v4, v13

    goto :goto_8

    :cond_8
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "Not starting encoding because it is stopped by user."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v11, v5

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v12, v6

    goto/16 :goto_3

    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v9, v10, v0, v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v9, v9, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    move/from16 v21, v0

    shr-int/lit8 v21, v21, 0x1

    add-int v10, v10, v21

    int-to-float v10, v10

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v10, v10, v21

    sub-float/2addr v9, v10

    neg-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    shr-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    div-float v10, v9, v10

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    move/from16 v23, v0

    shr-int/lit8 v23, v23, 0x1

    add-int v21, v21, v23

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v23, 0x3f800000    # 1.0f

    mul-float v21, v21, v23

    sub-float v9, v9, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    move/from16 v21, v0

    shr-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v9, v9, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v9}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    int-to-float v10, v10

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v10, v10, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v10, v10, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/transcode/core/Encode;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v23, 0x3f800000    # 1.0f

    mul-float v21, v21, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v21, v23

    move/from16 v0, v21

    invoke-virtual {v9, v10, v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixScale(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    int-to-float v10, v10

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v9, v10, v0, v1, v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixRotate(FFFF)V

    goto/16 :goto_7

    :sswitch_0
    const/high16 v21, -0x40800000    # -1.0f

    mul-float v9, v9, v21

    goto :goto_f

    :sswitch_1
    const/high16 v21, -0x40800000    # -1.0f

    mul-float v10, v10, v21

    const/high16 v21, -0x40800000    # -1.0f

    mul-float v9, v9, v21

    goto :goto_f

    :sswitch_2
    const/high16 v21, -0x40800000    # -1.0f

    mul-float v10, v10, v21

    goto :goto_f

    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v9, v24, v26

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-wide/from16 v24, v0

    const/4 v10, 0x0

    move-wide/from16 v0, v24

    invoke-virtual {v9, v0, v1, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-wide/from16 v26, v0

    cmp-long v9, v24, v26

    if-ltz v9, :cond_12

    const/4 v9, 0x1

    :goto_11
    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v9, v24, v26

    if-nez v9, :cond_13

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Invalid File!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_12
    const/4 v9, 0x0

    goto :goto_11

    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_10

    :cond_14
    if-eqz v25, :cond_2

    :goto_12
    return-void

    :cond_15
    if-nez v4, :cond_3

    if-nez v19, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_18

    aget-object v4, v30, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-wide/from16 v36, v0

    cmp-long v4, v8, v36

    if-lez v4, :cond_19

    const/4 v4, 0x1

    :goto_13
    if-nez v4, :cond_1c

    if-gez v7, :cond_1a

    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x0

    :goto_15
    move v13, v4

    :goto_16
    if-eqz v13, :cond_4

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "video extractor: EOS"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v5, :cond_16

    goto/16 :goto_9

    :cond_18
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "no video decoder input buffer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v4

    goto/16 :goto_a

    :cond_19
    const/4 v4, 0x0

    goto :goto_13

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_14

    :cond_1b
    const/4 v4, 0x1

    goto :goto_15

    :cond_1c
    const/4 v13, 0x1

    goto :goto_16

    :cond_1d
    if-nez v16, :cond_5

    if-nez v19, :cond_20

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    move-object/from16 v0, v32

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    const/4 v4, -0x1

    if-eq v5, v4, :cond_21

    const/4 v4, -0x3

    if-eq v5, v4, :cond_22

    const/4 v4, -0x2

    if-eq v5, v4, :cond_23

    aget-object v4, v17, v5

    move-object/from16 v0, v32

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_24

    const-string/jumbo v4, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "video decoder: returned buffer for time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v32

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v4, :cond_25

    const/4 v4, 0x0

    :goto_17
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v5, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-nez v4, :cond_26

    :cond_1f
    :goto_18
    move-object/from16 v0, v32

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "video decoder: EOS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move/from16 v16, v4

    goto/16 :goto_b

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_1e

    goto/16 :goto_b

    :cond_21
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "no video decoder output buffer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_22
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "video decoder: output buffers changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v17, v4

    goto/16 :goto_b

    :cond_23
    const-string/jumbo v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video decoder: codec info format changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_24
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "video decoder: codec config buffer"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_b

    :cond_25
    const/4 v4, 0x1

    goto/16 :goto_17

    :cond_26
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "output surface: await new image"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "output surface: draw image"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mLogoPresent:Z

    if-nez v4, :cond_2b

    :cond_27
    :goto_19
    move-object/from16 v0, v32

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2c

    const/4 v4, 0x1

    :goto_1a
    if-nez v4, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2e

    :cond_28
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, v32

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "input surface: swap buffers"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v5}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "video encoder: notified of new frame"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v15, 0x1

    :goto_1b
    add-int/lit8 v14, v4, 0x1

    :goto_1c
    move v15, v5

    goto/16 :goto_18

    :cond_29
    :try_start_2
    const-string/jumbo v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v4

    :goto_1d
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v6, :cond_2f

    :cond_2a
    :goto_1e
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_2b
    :try_start_3
    rem-int v4, v15, v35

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    if-ge v4, v5, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v4}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->draw()V

    goto/16 :goto_19

    :cond_2c
    const/4 v4, 0x0

    goto :goto_1a

    :cond_2d
    move v5, v15

    goto :goto_1c

    :cond_2e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    rem-int v4, v14, v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v4, :cond_28

    move v4, v14

    move v5, v15

    goto :goto_1b

    :cond_2f
    if-eqz v5, :cond_2a

    const-string/jumbo v6, "Surface frame wait timed out"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_1e

    :cond_30
    if-nez v18, :cond_6

    if-nez v19, :cond_32

    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    const/4 v4, -0x1

    if-eq v5, v4, :cond_33

    const/4 v4, -0x3

    if-eq v5, v4, :cond_34

    const/4 v4, -0x2

    if-eq v5, v4, :cond_35

    if-ltz v5, :cond_37

    aget-object v4, v20, v5

    move-object/from16 v0, v31

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_38

    move-object/from16 v0, v31

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v6, :cond_39

    :goto_1f
    move-object/from16 v0, v31

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_3a

    move/from16 v4, v18

    :goto_20
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move/from16 v18, v4

    goto/16 :goto_c

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_31

    goto/16 :goto_c

    :cond_33
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "no video encoder output buffer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_34
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "video encoder: output buffers changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v20, v4

    goto/16 :goto_c

    :cond_35
    const-string/jumbo v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video encoder: output format changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    if-gez v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    move-object/from16 v19, v4

    goto/16 :goto_c

    :cond_36
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Video encoder output format changed after muxer has started"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_37
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "Unexpected result from video encoder dequeue output format."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    :cond_38
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "video encoder: codec config buffer"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_c

    :cond_39
    const-string/jumbo v6, "TranscodeLib"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video encoder: writing sample data timestamp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    move-object/from16 v0, v31

    invoke-virtual {v6, v7, v4, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_1f

    :cond_3a
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "video encoder: EOS"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_20

    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_40

    :cond_3c
    :goto_21
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_48

    :cond_3d
    :goto_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_50

    :cond_3e
    move/from16 v4, v24

    :goto_23
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_57

    :cond_3f
    :goto_24
    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_d

    :cond_40
    if-nez v21, :cond_3c

    if-nez v28, :cond_42

    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v4, -0x1

    if-eq v5, v4, :cond_43

    aget-object v4, v12, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    move-wide/from16 v36, v0

    cmp-long v4, v8, v36

    if-lez v4, :cond_44

    const/4 v4, 0x1

    :goto_25
    if-nez v4, :cond_47

    if-gtz v7, :cond_45

    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    move-result v4

    if-eqz v4, :cond_46

    const/4 v4, 0x0

    :goto_27
    move/from16 v21, v4

    :goto_28
    if-eqz v21, :cond_3c

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "audio decoder sending EOS"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_21

    :cond_42
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_41

    goto :goto_21

    :cond_43
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder input try again later"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_44
    const/4 v4, 0x0

    goto :goto_25

    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_26

    :cond_46
    const/4 v4, 0x1

    goto :goto_27

    :cond_47
    const/16 v21, 0x1

    goto :goto_28

    :cond_48
    if-nez v24, :cond_3d

    const/4 v4, -0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_3d

    if-nez v28, :cond_4a

    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4b

    const/4 v5, -0x3

    if-eq v4, v5, :cond_4c

    const/4 v5, -0x2

    if-eq v4, v5, :cond_4d

    if-ltz v4, :cond_4e

    move-object/from16 v0, v34

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4f

    move/from16 v22, v4

    goto/16 :goto_22

    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_49

    goto/16 :goto_22

    :cond_4b
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder output buffer try again later while decoding"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    :cond_4c
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder: output buffers changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v23, v4

    goto/16 :goto_22

    :cond_4d
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder: output format changed: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    :cond_4e
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    :cond_4f
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "audio decoder: codec config buffer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_22

    :cond_50
    const/4 v4, -0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v4, -0x1

    if-eq v5, v4, :cond_51

    aget-object v6, v11, v5

    move-object/from16 v0, v34

    iget v7, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v34

    iget-wide v8, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-gez v7, :cond_52

    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    move/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v22, -0x1

    move-object/from16 v0, v34

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_56

    move/from16 v4, v24

    goto/16 :goto_23

    :cond_51
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio encoder input buffer try again later"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v24

    goto/16 :goto_23

    :cond_52
    aget-object v4, v23, v22

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object/from16 v0, v34

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v34

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v4, v7

    invoke-virtual {v10, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    if-gtz v4, :cond_53

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, v34

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_29

    :cond_53
    invoke-virtual {v10}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v36

    if-nez v36, :cond_54

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "TempAudio is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_54
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    div-int v4, v7, v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 v4, 0x0

    :goto_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    move/from16 v37, v0

    mul-int/lit8 v37, v37, 0x2

    div-int v37, v7, v37

    move/from16 v0, v37

    if-lt v4, v0, :cond_55

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    div-int/2addr v7, v10

    move-object/from16 v0, v34

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual/range {v36 .. v36}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_29

    :cond_55
    mul-int/lit8 v37, v4, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    move/from16 v38, v0

    mul-int v38, v38, v4

    mul-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v38

    invoke-virtual/range {v36 .. v38}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    mul-int/lit8 v37, v4, 0x2

    add-int/lit8 v37, v37, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    move/from16 v38, v0

    mul-int v38, v38, v4

    mul-int/lit8 v38, v38, 0x2

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v38

    invoke-virtual/range {v36 .. v38}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_56
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "audio decoder: EOS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_23

    :cond_57
    if-nez v25, :cond_3f

    if-nez v28, :cond_59

    :cond_58
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v6, 0x2710

    move-object/from16 v0, v33

    invoke-virtual {v5, v0, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v8

    const/4 v5, -0x1

    if-eq v8, v5, :cond_5a

    const/4 v5, -0x3

    if-eq v8, v5, :cond_5b

    const/4 v5, -0x2

    if-eq v8, v5, :cond_5c

    if-ltz v8, :cond_5e

    aget-object v9, v29, v8

    move-object/from16 v0, v33

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5f

    move-object/from16 v0, v33

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v5, :cond_60

    move-wide/from16 v6, v26

    :goto_2b
    move-object/from16 v0, v33

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_63

    move/from16 v5, v25

    :goto_2c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-wide/from16 v26, v6

    move/from16 v25, v5

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_d

    :cond_59
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v5, :cond_58

    goto/16 :goto_24

    :cond_5a
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "audio encoder output buffer try again later"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_d

    :cond_5b
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "audio encoder: output buffers changed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v6, v5

    move-object/from16 v5, v28

    goto/16 :goto_d

    :cond_5c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    if-gez v5, :cond_5d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const-string/jumbo v6, "TranscodeLib"

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

    move-object/from16 v6, v29

    goto/16 :goto_d

    :cond_5d
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Audio encoder output format changed after muxer is started."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5e
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_d

    :cond_5f
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    goto/16 :goto_d

    :cond_60
    const-string/jumbo v5, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "audio encoder writing sample data to muxer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v36, v0

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v33

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v26, v6

    if-gtz v5, :cond_61

    const/4 v5, 0x1

    :goto_2d
    if-nez v5, :cond_62

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Audio time stamps are not in increasing order."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_61
    const/4 v5, 0x0

    goto :goto_2d

    :cond_62
    move-object/from16 v0, v33

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    move-object/from16 v0, v33

    invoke-virtual {v5, v10, v9, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_2b

    :cond_63
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v9, "audio encoder: EOS"

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto/16 :goto_2c

    :cond_64
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v7, :cond_7

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v7, :cond_66

    :cond_65
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v7, :cond_67

    :goto_2e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v7, v8}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7}, Landroid/media/MediaMuxer;->start()V

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    goto/16 :goto_e

    :cond_66
    if-nez v5, :cond_65

    goto/16 :goto_e

    :cond_67
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v5}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    goto :goto_2e

    :cond_68
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "Encoding abruptly stopped."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :catch_1
    move-exception v5

    move v14, v4

    move-object v4, v5

    goto/16 :goto_1d

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public startTransRewriting()V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v2, :cond_9

    const/16 v27, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_a

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v3, :cond_b

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_c

    const/4 v4, 0x1

    :goto_2
    const/4 v11, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/16 v21, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    shl-int/lit8 v5, v5, 0x1

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v22, 0x0

    cmp-long v5, v8, v22

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    const/4 v8, 0x2

    if-eq v5, v8, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    const/4 v8, 0x1

    if-eq v5, v8, :cond_14

    move-wide/from16 v28, v6

    move/from16 v23, v4

    :goto_3
    if-nez v16, :cond_16

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_17

    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    if-nez v4, :cond_1a

    :cond_2
    const-string/jumbo v4, "Transcoding start"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_1b

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_1c

    const/4 v5, 0x0

    move-object v9, v5

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v5, :cond_1d

    const/4 v5, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v6, :cond_1e

    const/4 v6, 0x0

    move-object v10, v6

    :goto_8
    new-instance v33, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v33 .. v33}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v34, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v34 .. v34}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v35, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v35 .. v35}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v36, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v36 .. v36}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v24, -0x1

    move-object/from16 v20, v5

    move-object/from16 v26, v4

    move/from16 v22, v3

    move/from16 v19, v2

    move v2, v11

    :goto_9
    if-nez v16, :cond_1f

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v3, :cond_20

    :cond_4
    :goto_a
    move v11, v2

    :cond_5
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_28

    :cond_6
    :goto_c
    move-object/from16 v37, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, v37

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_3a

    :cond_7
    :goto_e
    move-object/from16 v37, v17

    move/from16 v17, v16

    move-object/from16 v16, v37

    :goto_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_45

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    :goto_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v4, :cond_6b

    :cond_8
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v4, :cond_6f

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move v2, v11

    move/from16 v37, v13

    move v13, v14

    move-object v14, v12

    move/from16 v12, v37

    move-object/from16 v38, v16

    move/from16 v16, v17

    move-object/from16 v17, v38

    goto :goto_9

    :cond_9
    const-string/jumbo v2, "Not starting encoding because it is stopped by user."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    return-void

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Input time: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " After seekto previous I: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :goto_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    cmp-long v5, v8, v30

    if-ltz v5, :cond_e

    const/4 v5, 0x1

    :goto_13
    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Proceed to find I: Sampletime: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_12

    :cond_e
    const/4 v5, 0x0

    goto :goto_13

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found I: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Transcode section Start: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", End: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v5, v8, v6

    if-gtz v5, :cond_11

    const/4 v5, 0x1

    :goto_14
    if-nez v5, :cond_13

    const-string/jumbo v4, "Reversed. Recalculating..."

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v5, 0x2

    invoke-virtual {v4, v6, v7, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v5, 0x2

    invoke-virtual {v4, v6, v7, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_12

    :goto_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Now...Input time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " After seekto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const-wide/16 v6, -0x1

    const/16 v16, 0x1

    const/4 v4, 0x1

    move-wide/from16 v28, v6

    move/from16 v23, v4

    goto/16 :goto_3

    :cond_11
    const/4 v5, 0x0

    goto :goto_14

    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting on I: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_15

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Set transcode mode: Start: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, ", End: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-wide/from16 v28, v6

    move/from16 v23, v4

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v9, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v5, 0x0

    invoke-virtual {v4, v8, v9, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/16 v16, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "Abandon TransRewrite. Switch to Rewrite mode."

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-wide/from16 v28, v6

    move/from16 v23, v4

    goto/16 :goto_3

    :cond_15
    const-wide/16 v6, -0x1

    const/16 v16, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "Start point has not been updated!"

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-wide/from16 v28, v6

    move/from16 v23, v4

    goto/16 :goto_3

    :cond_16
    if-eqz v23, :cond_0

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_18

    const/4 v4, 0x1

    :goto_17
    if-nez v4, :cond_19

    const-string/jumbo v4, "Advance audio..."

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_16

    :cond_18
    const/4 v4, 0x0

    goto :goto_17

    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Audio Transcode section: Current position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mTrimAudioStartUs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    :goto_18
    const-string/jumbo v2, "Rewriting starts"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v3

    const/4 v2, 0x0

    const/4 v7, -0x1

    if-ne v6, v7, :cond_70

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Absent valid video track"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    goto/16 :goto_7

    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v10, v6

    goto/16 :goto_8

    :cond_1f
    if-eqz v23, :cond_3

    :goto_19
    const-string/jumbo v2, "Transcoding Done"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_18

    :cond_20
    if-nez v2, :cond_4

    if-nez v18, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    aget-object v2, v32, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    cmp-long v2, v6, v28

    if-lez v2, :cond_24

    const/4 v2, 0x1

    :goto_1a
    if-nez v2, :cond_27

    if-gez v5, :cond_25

    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    :goto_1c
    const-string/jumbo v4, "Move forward to locate: Video"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v11, v2

    :goto_1d
    if-eqz v11, :cond_5

    const-string/jumbo v2, "video extractor: EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_b

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v3, :cond_21

    goto/16 :goto_a

    :cond_23
    const-string/jumbo v3, "no video decoder input buffer"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move v11, v2

    goto/16 :goto_b

    :cond_24
    const/4 v2, 0x0

    goto :goto_1a

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1b

    :cond_26
    const/4 v2, 0x1

    goto :goto_1c

    :cond_27
    const/4 v11, 0x1

    goto :goto_1d

    :cond_28
    if-nez v15, :cond_6

    if-nez v18, :cond_2b

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, v34

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_2c

    const/4 v2, -0x3

    if-eq v3, v2, :cond_2d

    const/4 v2, -0x2

    if-eq v3, v2, :cond_2e

    aget-object v2, v14, v3

    move-object/from16 v0, v34

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video decoder: returned buffer for time "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, v34

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_30

    const/4 v2, 0x0

    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4, v3, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-nez v2, :cond_31

    :cond_2a
    :goto_1f
    move-object/from16 v0, v34

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_39

    move-object/from16 v37, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, v37

    goto/16 :goto_d

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v2, :cond_29

    goto/16 :goto_c

    :cond_2c
    const-string/jumbo v2, "no video decoder output buffer"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v37, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, v37

    goto/16 :goto_d

    :cond_2d
    const-string/jumbo v2, "video decoder: output buffers changed"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move v14, v13

    move v13, v12

    move-object v12, v2

    goto/16 :goto_d

    :cond_2e
    move-object/from16 v37, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, v37

    goto/16 :goto_d

    :cond_2f
    const-string/jumbo v2, "video decoder: codec config buffer"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v37, v14

    move v14, v13

    move v13, v12

    move-object/from16 v12, v37

    goto/16 :goto_d

    :cond_30
    const/4 v2, 0x1

    goto :goto_1e

    :cond_31
    const-string/jumbo v2, "output surface: await new image"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string/jumbo v2, "output surface: draw image"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "presentationTimeUs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v34

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "StartPnt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, v34

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_35

    const/4 v2, 0x1

    :goto_20
    if-nez v2, :cond_36

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_37

    :cond_32
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, v34

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    const-string/jumbo v3, "input surface: swap buffers"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v3}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    const-string/jumbo v3, "video encoder: notified of new frame"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v13, 0x1

    :goto_21
    add-int/lit8 v12, v2, 0x1

    :goto_22
    move v13, v3

    goto/16 :goto_1f

    :cond_33
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_b

    :catch_0
    move-exception v2

    :goto_23
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v4, :cond_38

    :cond_34
    :goto_24
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_35
    const/4 v2, 0x0

    goto :goto_20

    :cond_36
    move v3, v13

    goto :goto_22

    :cond_37
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    rem-int v2, v12, v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v2, :cond_32

    move v2, v12

    move v3, v13

    goto :goto_21

    :cond_38
    if-eqz v3, :cond_34

    const-string/jumbo v4, "Surface frame wait timed out"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_24

    :cond_39
    const-string/jumbo v2, "video decoder: EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    move v15, v2

    move/from16 v37, v12

    move-object v12, v14

    move v14, v13

    move/from16 v13, v37

    goto/16 :goto_d

    :cond_3a
    if-nez v16, :cond_7

    if-nez v18, :cond_3c

    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, v33

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_3d

    const/4 v2, -0x3

    if-eq v3, v2, :cond_3e

    const/4 v2, -0x2

    if-eq v3, v2, :cond_3f

    if-ltz v3, :cond_41

    aget-object v2, v17, v3

    move-object/from16 v0, v33

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_42

    move-object/from16 v0, v33

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v4, :cond_43

    :goto_25
    move-object/from16 v0, v33

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_44

    move/from16 v2, v16

    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v16, v17

    move/from16 v17, v2

    goto/16 :goto_f

    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v2, :cond_3b

    goto/16 :goto_e

    :cond_3d
    const-string/jumbo v2, "no video encoder output buffer"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v37, v17

    move/from16 v17, v16

    move-object/from16 v16, v37

    goto/16 :goto_f

    :cond_3e
    const-string/jumbo v2, "video encoder: output buffers changed"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move/from16 v17, v16

    move-object/from16 v16, v2

    goto/16 :goto_f

    :cond_3f
    const-string/jumbo v2, "video encoder: output format changed"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    if-gez v2, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    move-object/from16 v18, v2

    move/from16 v37, v16

    move-object/from16 v16, v17

    move/from16 v17, v37

    goto/16 :goto_f

    :cond_40
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Video encoder output format changed after muxer has started"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_41
    const-string/jumbo v2, "Unexpected result from video encoder dequeue output format."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v37, v17

    move/from16 v17, v16

    move-object/from16 v16, v37

    goto/16 :goto_f

    :cond_42
    const-string/jumbo v2, "video encoder: codec config buffer"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v37, v17

    move/from16 v17, v16

    move-object/from16 v16, v37

    goto/16 :goto_f

    :cond_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video encoder: writing sample data timestamp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v2, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_25

    :cond_44
    const-string/jumbo v2, "video encoder: EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto/16 :goto_26

    :cond_45
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_4a

    :cond_46
    :goto_27
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_52

    :cond_47
    :goto_28
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_5a

    :cond_48
    move/from16 v2, v22

    :goto_29
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v3, :cond_5e

    :cond_49
    :goto_2a
    move/from16 v22, v2

    move-object/from16 v3, v27

    move-object/from16 v2, v26

    goto/16 :goto_10

    :cond_4a
    if-nez v19, :cond_46

    if-nez v27, :cond_4c

    :cond_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_4d

    aget-object v2, v10, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Audio psntTimeUs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", TrimTCEndTime "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    cmp-long v2, v6, v28

    if-lez v2, :cond_4e

    const/4 v2, 0x1

    :goto_2b
    if-nez v2, :cond_51

    if-gtz v5, :cond_4f

    :goto_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v2, 0x0

    :goto_2d
    const-string/jumbo v4, "Move forward to locate: Audio"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move/from16 v19, v2

    :goto_2e
    if-eqz v19, :cond_46

    const-string/jumbo v2, "audio decoder sending EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_27

    :cond_4c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v2, :cond_4b

    goto/16 :goto_27

    :cond_4d
    const-string/jumbo v2, "audio decoder input try again later"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_27

    :cond_4e
    const/4 v2, 0x0

    goto :goto_2b

    :cond_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_2c

    :cond_50
    const/4 v2, 0x1

    goto :goto_2d

    :cond_51
    const/16 v19, 0x1

    goto :goto_2e

    :cond_52
    if-nez v22, :cond_47

    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_47

    if-nez v27, :cond_54

    :cond_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, v36

    invoke-virtual {v2, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_55

    const/4 v3, -0x3

    if-eq v2, v3, :cond_56

    const/4 v3, -0x2

    if-eq v2, v3, :cond_57

    if-ltz v2, :cond_58

    move-object/from16 v0, v36

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_59

    move/from16 v21, v2

    goto/16 :goto_28

    :cond_54
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v2, :cond_53

    goto/16 :goto_28

    :cond_55
    const-string/jumbo v2, "audio decoder output buffer try again later"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_56
    const-string/jumbo v2, "audio decoder: output buffers changed"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v20, v2

    goto/16 :goto_28

    :cond_57
    const-string/jumbo v2, "audio decoder: output format changed: "

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_58
    const-string/jumbo v2, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_59
    const-string/jumbo v3, "audio decoder: codec config buffer"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_28

    :cond_5a
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_5b

    aget-object v2, v9, v3

    move-object/from16 v0, v36

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v36

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-gez v5, :cond_5c

    :goto_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v21, -0x1

    move-object/from16 v0, v36

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_5d

    move/from16 v2, v22

    goto/16 :goto_29

    :cond_5b
    const-string/jumbo v2, "audio encoder input buffer try again later"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move/from16 v2, v22

    goto/16 :goto_29

    :cond_5c
    aget-object v4, v20, v21

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, v36

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v36

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v5

    invoke-virtual {v4, v8}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, v36

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_2f

    :cond_5d
    const-string/jumbo v2, "audio decoder: EOS"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto/16 :goto_29

    :cond_5e
    if-nez v23, :cond_49

    if-nez v27, :cond_60

    :cond_5f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, v35

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    const/4 v3, -0x1

    if-eq v6, v3, :cond_61

    const/4 v3, -0x3

    if-eq v6, v3, :cond_62

    const/4 v3, -0x2

    if-eq v6, v3, :cond_63

    if-ltz v6, :cond_65

    aget-object v7, v26, v6

    move-object/from16 v0, v35

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_66

    move-object/from16 v0, v35

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v3, :cond_67

    move-wide/from16 v4, v24

    :goto_30
    move-object/from16 v0, v35

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_6a

    move/from16 v3, v23

    :goto_31
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-wide/from16 v24, v4

    move/from16 v23, v3

    move/from16 v22, v2

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    goto/16 :goto_10

    :cond_60
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v3, :cond_5f

    goto/16 :goto_2a

    :cond_61
    const-string/jumbo v3, "audio encoder output buffer try again later"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move/from16 v22, v2

    move-object/from16 v3, v27

    move-object/from16 v2, v26

    goto/16 :goto_10

    :cond_62
    const-string/jumbo v3, "audio encoder: output buffers changed"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v3

    move/from16 v22, v2

    move-object v2, v3

    move-object/from16 v3, v27

    goto/16 :goto_10

    :cond_63
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    if-gez v3, :cond_64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "audio encoder: output format changed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move/from16 v22, v2

    move-object/from16 v2, v26

    goto/16 :goto_10

    :cond_64
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Audio encoder output format changed after muxer is started."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_65
    const-string/jumbo v3, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move/from16 v22, v2

    move-object/from16 v3, v27

    move-object/from16 v2, v26

    goto/16 :goto_10

    :cond_66
    const-string/jumbo v3, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move/from16 v22, v2

    move-object/from16 v3, v27

    move-object/from16 v2, v26

    goto/16 :goto_10

    :cond_67
    move-object/from16 v0, v35

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v3, v24, v4

    if-gtz v3, :cond_68

    const/4 v3, 0x1

    :goto_32
    if-nez v3, :cond_69

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Audio time stamps are not in increasing order."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_68
    const/4 v3, 0x0

    goto :goto_32

    :cond_69
    move-object/from16 v0, v35

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    move-object/from16 v0, v35

    invoke-virtual {v3, v8, v7, v0}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_30

    :cond_6a
    const-string/jumbo v3, "audio encoder: EOS"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto/16 :goto_31

    :cond_6b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-nez v4, :cond_8

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_6d

    :cond_6c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_6e

    :goto_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v4, v5}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v4}, Landroid/media/MediaMuxer;->start()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    goto/16 :goto_11

    :cond_6d
    if-nez v3, :cond_6c

    goto/16 :goto_11

    :cond_6e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v4, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    goto :goto_33

    :cond_6f
    const-string/jumbo v2, "Encoding abruptly stopped."

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_70
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const/4 v7, -0x1

    if-ne v3, v7, :cond_73

    :goto_34
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    if-eqz v7, :cond_74

    :goto_35
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/transcode/core/EncodeVideo;->getVideoSampleSize(Landroid/media/MediaFormat;)I

    move-result v6

    const/4 v2, -0x1

    if-eq v3, v2, :cond_77

    move v2, v4

    :goto_36
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    iput v4, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    move v4, v5

    :goto_37
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v5, :cond_78

    :cond_71
    const/4 v4, -0x1

    if-ne v3, v4, :cond_7c

    :cond_72
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_80

    :goto_38
    return-void

    :cond_73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    goto :goto_34

    :cond_74
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    if-nez v2, :cond_76

    :cond_75
    const/4 v2, -0x1

    :goto_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v3, v7}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    move v3, v2

    goto :goto_35

    :cond_76
    const-string/jumbo v7, "audio/unknown"

    const-string/jumbo v8, "mime"

    invoke-virtual {v2, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_75

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v7, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    move v2, v3

    goto :goto_39

    :cond_77
    const/4 v2, 0x1

    goto :goto_36

    :cond_78
    if-nez v4, :cond_71

    const/4 v5, 0x0

    iput v5, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    iput v5, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v5, :cond_79

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, -0x1

    cmp-long v5, v30, v8

    if-eqz v5, :cond_7b

    iget-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v5, v8, v30

    if-gtz v5, :cond_7a

    const/4 v5, 0x1

    :goto_3a
    if-nez v5, :cond_7b

    const/4 v4, 0x1

    const-string/jumbo v5, "sawEOS: true: V"

    invoke-static {v5}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_37

    :cond_79
    const-string/jumbo v4, "saw input EOS: Video"

    invoke-static {v4}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    iput v5, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_37

    :cond_7a
    const/4 v5, 0x0

    goto :goto_3a

    :cond_7b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    iput v5, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    invoke-virtual {v5, v8, v6, v7}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_37

    :cond_7c
    const/high16 v3, 0x20000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    new-instance v5, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v5}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    :goto_3b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v3, :cond_72

    if-nez v2, :cond_72

    const/4 v3, 0x0

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v3, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v3, :cond_7d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v6, -0x1

    cmp-long v3, v30, v6

    if-eqz v3, :cond_7f

    iget-wide v6, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v3, v6, v30

    if-gtz v3, :cond_7e

    const/4 v3, 0x1

    :goto_3c
    if-nez v3, :cond_7f

    const/4 v2, 0x1

    const-string/jumbo v3, "sawEOS: true: A"

    invoke-static {v3}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_7d
    const-string/jumbo v2, "saw input EOS: Audio"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_3b

    :cond_7e
    const/4 v3, 0x0

    goto :goto_3c

    :cond_7f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    iput v3, v5, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    invoke-virtual {v3, v6, v4, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_3b

    :cond_80
    const-string/jumbo v2, "Rewriting finished"

    invoke-static {v2}, Lcom/samsung/android/transcode/core/EncodeVideo$Debugger;->log(Ljava/lang/Object;)V

    goto/16 :goto_38

    :catch_1
    move-exception v3

    move v12, v2

    move-object v2, v3

    goto/16 :goto_23
.end method

.method public stop()V
    .locals 4

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Stop method called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    iget-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v2, "Calling wait on stop lock."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->notifyFrameSyncObject()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v3, "Stop lock interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
