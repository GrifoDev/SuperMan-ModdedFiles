.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "AmrInputStream.java"


# static fields
.field private static final SAMPLES_PER_FRAME:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufIn:I

.field private mBufOut:I

.field mCodec:Landroid/media/MediaCodec;

.field mInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mInputStream:Ljava/io/InputStream;

.field private mOneByte:[B

.field mSawInputEOS:Z

.field mSawOutputEOS:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v4, 0x140

    new-array v4, v4, [B

    iput-object v4, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iput v6, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iput v6, p0, Landroid/media/AmrInputStream;->mBufOut:I

    new-array v4, v7, [B

    iput-object v4, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v4, "mime"

    const-string/jumbo v5, "audio/3gpp"

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "sample-rate"

    const/16 v5, 0x1f40

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v4, "channel-count"

    invoke-virtual {v1, v4, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v4, "bitrate"

    const/16 v5, 0x2fa8

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v2, Landroid/media/MediaCodecList;

    invoke-direct {v2, v6}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v2, v1}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    iget-object v4, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v1, v5, v6, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v4, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v4, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    :cond_1
    iput-object v8, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iput-object v2, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    :try_start_1
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iput-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    throw v0

    :catchall_1
    move-exception v0

    iput-object v2, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    :try_start_2
    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    iput-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v2, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AmrInputStream"

    const-string/jumbo v1, "AmrInputStream wasn\'t closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not open"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v2, p0, Landroid/media/AmrInputStream;->mBufIn:I

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    :goto_0
    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    if-gez v1, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v0, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v2, p0, Landroid/media/AmrInputStream;->mBufIn:I

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v0, p0, Landroid/media/AmrInputStream;->mInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    :cond_2
    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v2, p0, Landroid/media/AmrInputStream;->mBufIn:I

    if-ge v0, v2, :cond_8

    iget v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v2, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int/2addr v0, v2

    if-le p3, v0, :cond_3

    iget v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v2, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int p3, v0, v2

    :cond_3
    iget-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v2, p0, Landroid/media/AmrInputStream;->mBufOut:I

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    return p3

    :cond_4
    const/4 v3, 0x0

    :goto_1
    const/16 v0, 0x140

    if-ge v3, v0, :cond_5

    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Landroid/media/AmrInputStream;->mBuf:[B

    rsub-int v4, v3, 0x140

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v0, -0x1

    if-ne v8, v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    :cond_5
    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/AmrInputStream;->mCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    iget-boolean v2, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v2, :cond_7

    const/4 v6, 0x4

    :goto_2
    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_0

    :cond_6
    add-int/2addr v3, v8

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawInputEOS:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/media/AmrInputStream;->mSawOutputEOS:Z

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method
