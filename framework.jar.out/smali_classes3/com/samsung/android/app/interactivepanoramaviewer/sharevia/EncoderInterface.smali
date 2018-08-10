.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;
.super Ljava/lang/Object;
.source "EncoderInterface.java"


# static fields
.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "EncoderInterface"

.field private static final VERBOSE:Z = true


# instance fields
.field EncBitRate:I

.field FRAME_RATE:I

.field IFRAME_INTERVAL:I

.field TIMEOUT_USEC:I

.field frameEncoded:I

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mEncoder:Landroid/media/MediaCodec;

.field private mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private mOrientation:I

.field private mTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    const v0, 0x5b8d80

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->EncBitRate:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->IFRAME_INTERVAL:I

    return-void
.end method

.method private drainEncoder(Z[B)V
    .locals 18

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "drainEncoder("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "EncoderInterface"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v9, p1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v13

    :cond_0
    :goto_0
    if-nez p1, :cond_3

    if-eqz v9, :cond_4

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    int-to-long v0, v5

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v14

    const/4 v2, -0x1

    if-eq v14, v2, :cond_6

    const/4 v2, -0x3

    if-eq v14, v2, :cond_8

    const/4 v2, -0x2

    if-eq v14, v2, :cond_9

    if-ltz v14, :cond_b

    aget-object v10, v13, v14

    if-eqz v10, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_d

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_e

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v2, v14, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    if-eqz p1, :cond_10

    const-string/jumbo v2, "EncoderInterface"

    const-string/jumbo v4, "end of stream reached"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-ltz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-string/jumbo v2, "EncoderInterface"

    const-string/jumbo v4, "sending EOS to encoder"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    if-gez v3, :cond_5

    const/4 v9, 0x0

    const/4 v2, -0x1

    if-ne v3, v2, :cond_1

    const-string/jumbo v2, "EncoderInterface"

    const-string/jumbo v4, "no input available, spinning to encode buffer"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    aget-object v11, v12, v3

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->getPresentationTimeUs(I)J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ts of frame "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "EncoderInterface"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p2

    array-length v5, v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_6
    if-eqz p1, :cond_7

    :goto_5
    const-string/jumbo v2, "EncoderInterface"

    const-string/jumbo v4, "no output available, spinning to await EOS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    if-nez v9, :cond_2

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v13

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v15

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "encoder output format changed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "EncoderInterface"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2, v15}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "format changed twice"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "EncoderInterface"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "encoderOutputBuffer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " was null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    const-string/jumbo v2, "EncoderInterface"

    const-string/jumbo v4, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v4, 0x0

    iput v4, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v4

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v4, v10, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sent "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " bytes to muxer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "EncoderInterface"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "muxer hasn\'t started"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    const-string/jumbo v2, "EncoderInterface"

    const-string/jumbo v4, "reached end of stream unexpectedly"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private prepareEncoder(IIIIIILjava/lang/String;)I
    .locals 7

    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-string/jumbo v3, "video/avc"

    invoke-static {v3, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string/jumbo v3, "color-format"

    const/16 v4, 0x15

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "bitrate"

    invoke-virtual {v1, v3, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "frame-rate"

    invoke-virtual {v1, v3, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "i-frame-interval"

    invoke-virtual {v1, v3, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "format: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "EncoderInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v3, "video/avc"

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Output file is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "EncoderInterface"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v3, Landroid/media/MediaMuxer;

    const/4 v4, 0x0

    invoke-direct {v3, p7, v4}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "EncoderInterface"

    const-string/jumbo v4, "mEncoder is null returning"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3

    :catch_1
    move-exception v2

    const-string/jumbo v3, "EncoderInterface"

    const-string/jumbo v4, "MediaMuxer creation failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3
.end method

.method private releaseEncoder()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "EncoderInterface"

    const-string/jumbo v1, "releasing encoder objects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    iput-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->drainEncoder(Z[B)V

    invoke-direct {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->releaseEncoder()V

    return-void
.end method

.method public encode([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->drainEncoder(Z[B)V

    return-void
.end method

.method getPresentationTimeUs(I)J
    .locals 4

    int-to-long v0, p1

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->FRAME_RATE:I

    const v3, 0xf4240

    div-int v2, v3, v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public init(IIIIIILjava/lang/String;I)I
    .locals 3

    const/4 v2, -0x1

    if-nez p7, :cond_1

    :cond_0
    const-string/jumbo v0, "EncoderInterface"

    const-string/jumbo v1, "wrong arguments to init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x15

    if-ne p6, v0, :cond_2

    iput p4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->FRAME_RATE:I

    iput p3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->EncBitRate:I

    iput p8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mOrientation:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "video/avc output "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EncoderInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->prepareEncoder(IIIIIILjava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    const-string/jumbo v0, "EncoderInterface"

    const-string/jumbo v1, "color format not supported as of now"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public setTimeOutUs(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    return-void
.end method
