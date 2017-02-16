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

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    const v0, 0x5b8d80

    .line 20
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->EncBitRate:I

    const/4 v0, 0x5

    .line 22
    iput v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->IFRAME_INTERVAL:I

    .line 13
    return-void
.end method

.method private drainEncoder(Z[B)V
    .locals 10

    .prologue
    const-string/jumbo v0, "EncoderInterface"

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "drainEncoder("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v8, v0

    move v7, p1

    .line 159
    :goto_0
    if-nez p1, :cond_1

    .line 170
    if-eqz v7, :cond_3

    move v0, v7

    .line 197
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    .line 198
    if-eq v1, v2, :cond_5

    const/4 v2, -0x3

    .line 208
    if-eq v1, v2, :cond_8

    const/4 v2, -0x2

    .line 212
    if-eq v1, v2, :cond_9

    .line 226
    if-ltz v1, :cond_b

    .line 233
    aget-object v2, v8, v1

    .line 234
    if-eqz v2, :cond_c

    .line 239
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_d

    .line 246
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v3, :cond_e

    .line 260
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 262
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_10

    move v7, v0

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 162
    if-gez v1, :cond_2

    move v0, v7

    goto :goto_1

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-string/jumbo v0, "EncoderInterface"

    const-string/jumbo v1, "sending EOS to encoder"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 167
    goto :goto_1

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 172
    if-gez v1, :cond_4

    .line 187
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 188
    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "EncoderInterface"

    const-string/jumbo v2, "no input available, spinning to encode buffer"

    .line 191
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    :cond_4
    aget-object v0, v9, v1

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 176
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 180
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->getPresentationTimeUs(I)J

    move-result-wide v4

    const-string/jumbo v0, "EncoderInterface"

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ts of frame "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->frameEncoded:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    array-length v3, p2

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 185
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 201
    :cond_5
    if-eqz p1, :cond_7

    :cond_6
    const-string/jumbo v1, "EncoderInterface"

    const-string/jumbo v2, "no output available, spinning to await EOS"

    .line 206
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v0

    .line 208
    goto/16 :goto_0

    .line 201
    :cond_7
    if-eqz v0, :cond_6

    .line 272
    :goto_4
    return-void

    .line 211
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v8, v1

    move v7, v0

    .line 212
    goto/16 :goto_0

    .line 215
    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    if-nez v1, :cond_a

    .line 218
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string/jumbo v2, "EncoderInterface"

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "encoder output format changed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    .line 224
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 225
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    move v7, v0

    .line 226
    goto/16 :goto_0

    .line 216
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "format changed twice"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string/jumbo v2, "EncoderInterface"

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v0

    .line 231
    goto/16 :goto_0

    .line 235
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "encoderOutputBuffer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was null"

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string/jumbo v3, "EncoderInterface"

    const-string/jumbo v4, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 242
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto/16 :goto_2

    .line 248
    :cond_e
    iget-boolean v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    if-eqz v3, :cond_f

    .line 253
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 254
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 256
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    iget-object v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    const-string/jumbo v2, "EncoderInterface"

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes to muxer"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 249
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "muxer hasn\'t started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_10
    if-eqz p1, :cond_11

    const-string/jumbo v0, "EncoderInterface"

    const-string/jumbo v1, "end of stream reached"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_11
    const-string/jumbo v0, "EncoderInterface"

    const-string/jumbo v1, "reached end of stream unexpectedly"

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private prepareEncoder(IIIIIILjava/lang/String;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 74
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-string/jumbo v0, "video/avc"

    .line 76
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "color-format"

    const/16 v2, 0x15

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "bitrate"

    .line 82
    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "frame-rate"

    .line 83
    invoke-virtual {v0, v1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "i-frame-interval"

    .line 84
    invoke-virtual {v0, v1, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "EncoderInterface"

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v1, "video/avc"

    .line 91
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EncoderInterface"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Output file is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :try_start_1
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p7, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mTrackIndex:I

    .line 119
    iput-boolean v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxerStarted:Z

    .line 121
    return v6

    .line 94
    :catch_0
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "EncoderInterface"

    const-string/jumbo v1, "mEncoder is null returning"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v5

    .line 113
    :catch_1
    move-exception v0

    const-string/jumbo v0, "EncoderInterface"

    const-string/jumbo v1, "MediaMuxer creation failed"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v5
.end method

.method private releaseEncoder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "EncoderInterface"

    const-string/jumbo v1, "releasing encoder objects"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    if-nez v0, :cond_1

    .line 140
    :goto_1
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 132
    iput-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mEncoder:Landroid/media/MediaCodec;

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 138
    iput-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mMuxer:Landroid/media/MediaMuxer;

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->drainEncoder(Z[B)V

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->releaseEncoder()V

    .line 62
    return-void
.end method

.method public encode([B)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->drainEncoder(Z[B)V

    .line 67
    return-void
.end method

.method getPresentationTimeUs(I)J
    .locals 4

    .prologue
    .line 281
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

    .prologue
    const/4 v2, -0x1

    .line 37
    if-nez p7, :cond_1

    :cond_0
    const-string/jumbo v0, "EncoderInterface"

    const-string/jumbo v1, "wrong arguments to init"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return v2

    .line 37
    :cond_1
    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x15

    .line 43
    if-ne p6, v0, :cond_2

    .line 49
    iput p4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->FRAME_RATE:I

    .line 50
    iput p3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->EncBitRate:I

    .line 51
    iput p8, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->mOrientation:I

    const-string/jumbo v0, "EncoderInterface"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "video/avc output "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->prepareEncoder(IIIIIILjava/lang/String;)I

    move-result v0

    return v0

    :cond_2
    const-string/jumbo v0, "EncoderInterface"

    const-string/jumbo v1, "color format not supported as of now"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v2
.end method

.method public setTimeOutUs(I)V
    .locals 0

    .prologue
    .line 276
    iput p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/EncoderInterface;->TIMEOUT_USEC:I

    .line 277
    return-void
.end method
