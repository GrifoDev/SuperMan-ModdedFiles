.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;
.super Ljava/lang/Object;
.source "DecoderInterfaceFHD.java"

# interfaces
.implements Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/AppController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;,
        Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;,
        Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;
    }
.end annotation


# static fields
.field private static final DECODE_WAIT_TIME:J = 0x2710L

.field public static final GOP_FACTOR:I = 0x4


# instance fields
.field IFRAME_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field lockObj:Ljava/lang/Object;

.field mBufferSize:I

.field private mColorFormat:I

.field mCroppedBuffer:Ljava/nio/ByteBuffer;

.field protected volatile mCurrentState:I

.field mExif:I

.field mFile:Ljava/io/File;

.field mFormat:Landroid/media/MediaFormat;

.field mFrameHeight:I

.field mFrameWidth:I

.field mFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;",
            ">;"
        }
    .end annotation
.end field

.field mKeyFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;",
            ">;"
        }
    .end annotation
.end field

.field mMediaDecoder:Landroid/media/MediaCodec;

.field mMediaExtractor:Landroid/media/MediaExtractor;

.field mNextGOPTs:J

.field mPPhandler1:I

.field mPath:Ljava/lang/String;

.field mResizeBuffer:Ljava/nio/ByteBuffer;

.field mRetriever:Landroid/media/MediaMetadataRetriever;

.field mSyncTs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDuration:J

.field nFramesInLastGop:I

.field nTotalFrame:I

.field nTotalSyncFrame:I

.field prevGOPRequestDir:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mNextGOPTs:J

    const/16 v0, 0x500

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    const/16 v0, 0x2d0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPPhandler1:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->lockObj:Ljava/lang/Object;

    const-string/jumbo v0, "DecoderInterface"

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    iput-object p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    return-void
.end method

.method private calculateGOPSize(I)I
    .locals 10

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    invoke-virtual {v6, v8, v9, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-nez v6, :cond_2

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x2

    invoke-virtual {v6, v4, v5, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "calculateGOPSize I frame done: prevTs"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "DecoderInterface"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    return v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "calculateGOPSize 1 cur = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "DecoderInterface"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v5, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "calculateGOPSize 2 cur = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "DecoderInterface"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "calculateGOPSize nFramesInLastGop = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "DecoderInterface"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nFramesInLastGop:I

    sub-int v6, p1, v6

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    add-int/lit8 v7, v7, -0x1

    div-int v2, v6, v7

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    invoke-virtual {v6, v8, v9, v7}, Landroid/media/MediaExtractor;->seekTo(JI)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "GOP size"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "total sync frames"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalSyncFrame:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "DecoderInterface"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    move v2, p1

    goto :goto_2
.end method

.method private calculateTotalFrames()I
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v4, v5, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v4, v5, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    return v0
.end method

.method private calculateTotalIFrames()I
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v8, v9, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v8, v9, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "no. of I frames"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DecoderInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v3, 0x0

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->advance()Z

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "calculateTotalIFrames 1 cur = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DecoderInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v1, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "calculateTotalIFrames 2 cur = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DecoderInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public deInit()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->lockObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "DecoderInterface"

    const-string/jumbo v2, "deinit entry"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x3ee

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-nez v1, :cond_1

    :goto_1
    const-string/jumbo v1, "DecoderInterface"

    const-string/jumbo v2, "deinit exit"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getContentMetaData()Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;-><init>(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;)V

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iput v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mWidth:I

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    iput v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$ContentMetaData;->mHeight:I

    return-object v0
.end method

.method public getGOPInterval()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    return v0
.end method

.method public getTotalFrameCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    return v0
.end method

.method public init(Z)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "init entry "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "DecoderInterface"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x3e9

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mRetriever:Landroid/media/MediaMetadataRetriever;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    iput v9, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    if-nez v5, :cond_2

    :goto_2
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mBufferSize:I

    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    iget-object v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    const/4 v3, 0x0

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string/jumbo v6, "mime"

    invoke-virtual {v2, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "video/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :try_start_1
    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6, v2, v8, v8, v9}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->start()V

    invoke-direct {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->calculateTotalFrames()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "init TotalFrameCount"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "DecoderInterface"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->nTotalFrame:I

    invoke-direct {p0, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->calculateGOPSize(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "IFRAME_INTERVAL = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->IFRAME_INTERVAL:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "DecoderInterface"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "init Done width, height, exif "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mExif:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "DecoderInterface"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string/jumbo v6, "DecoderInterface"

    const-string/jumbo v7, "decoder is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public nextframe(Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;)Z
    .locals 23

    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    if-nez v2, :cond_2

    :cond_0
    const-string/jumbo v2, "DecoderInterface"

    const-string/jumbo v4, "decoder not initialized"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1
    const-string/jumbo v2, "DecoderInterface"

    const-string/jumbo v4, "data is null"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    :goto_0
    const/16 v18, 0x0

    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v20

    new-instance v17, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, -0x1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x2710

    invoke-virtual {v2, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-gez v3, :cond_4

    :goto_1
    const/16 v19, -0x1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x2710

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v19

    packed-switch v19, :pswitch_data_0

    :try_start_3
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v2, :cond_9

    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    mul-int/2addr v4, v7

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    if-ne v2, v4, :cond_a

    :goto_2
    aget-object v6, v20, v19

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    move-result-object v16

    if-nez v16, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    move/from16 v9, v21

    invoke-static/range {v6 .. v12}, Lcom/samsung/android/app/interactivepanoramaviewer/util/JniUtil;->swCrop(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->mBuffer:[B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$BufferData;->bDirty:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_4
    move-object/from16 v0, v17

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_c

    const/4 v2, 0x1

    return v2

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mBufferSize:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    goto/16 :goto_0

    :catch_0
    move-exception v14

    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x1

    return v2

    :cond_4
    aget-object v6, v18, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    invoke-virtual {v2, v6, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v5

    if-ltz v5, :cond_5

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v15

    const/4 v2, 0x0

    return v2

    :cond_5
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    const-string/jumbo v2, "DecoderInterface"

    const-string/jumbo v4, "THis is the End of the Stream"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_2
    move-exception v14

    const/4 v2, 0x1

    return v2

    :catch_3
    move-exception v14

    const/4 v2, 0x1

    return v2

    :catch_4
    move-exception v14

    const/4 v2, 0x1

    return v2

    :pswitch_0
    const-string/jumbo v2, "DecoderInterface"

    const-string/jumbo v4, "INFO_OUTPUT_BUFFERS_CHANGED"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v20

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v4, "color-format"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "DecoderInterface"

    const-string/jumbo v4, "cf not present"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "New format "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "DecoderInterface"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v4, "color-format"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v13

    const/16 v2, 0x15

    if-eq v13, v2, :cond_7

    const/16 v2, 0x13

    if-eq v13, v2, :cond_8

    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mColorFormat "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "DecoderInterface"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    goto :goto_5

    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    goto :goto_5

    :pswitch_2
    const-string/jumbo v2, "DecoderInterface"

    const-string/jumbo v4, "dequeueOutputBuffer timed out! with wait period 10000"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v2, "DecodeActivity"

    const-string/jumbo v4, "end of stream------------------"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3f4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I

    const/4 v2, 0x0

    return v2

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    add-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v22, v2, -0x80

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v2, v2, -0x1

    and-int/lit8 v21, v2, -0x20

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCroppedBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image;->getWidth()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mFrameHeight:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mColorFormat:I

    invoke-static/range {v6 .. v12}, Lcom/samsung/android/app/interactivepanoramaviewer/util/JniUtil;->swCrop(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)V

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v2, "DecoderInterface"

    const-string/jumbo v4, "OutputBuffer BUFFER_FLAG_END_OF_STREAM here"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3f4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mCurrentState:I
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v2, 0x0

    return v2

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public seekToRequiredGOP(I)Z
    .locals 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaDecoder:Landroid/media/MediaCodec;

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "DecoderInterface"

    const-string/jumbo v5, "decoder not initialized"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getGOPInterval()I

    move-result v4

    div-int v1, p1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "req frame No ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " reqIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DecoderInterface"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tss "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DecoderInterface"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    const-string/jumbo v4, "DecoderInterface"

    const-string/jumbo v5, "reqIndex computation failed"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v3, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    invoke-virtual {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->getGOPInterval()I

    move-result v4

    mul-int v0, v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "frame ts "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " extarctor ts "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "frameCounter= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DecoderInterface"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;->mSyncTs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    goto :goto_0
.end method
