.class Lcom/samsung/android/media/MotionPhotoConverter$1;
.super Landroid/media/MediaCodec$Callback;
.source "MotionPhotoConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/MotionPhotoConverter;->decodeMp4()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field sawInputEOS:Z

.field sawOutputEOS:Z

.field final synthetic this$0:Lcom/samsung/android/media/MotionPhotoConverter;


# direct methods
.method constructor <init>(Lcom/samsung/android/media/MotionPhotoConverter;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->sawInputEOS:Z

    iput-boolean v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->sawOutputEOS:Z

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 3

    const-string/jumbo v0, "MotionPhotoConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "decoder: onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 9

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->sawInputEOS:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v0, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v8, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    const-wide/16 v4, 0x0

    if-gtz v3, :cond_1

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->sawInputEOS:Z

    const-string/jumbo v0, "MotionPhotoConverter"

    const-string/jumbo v1, "decoder: saw input EOS!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->sawInputEOS:Z

    if-eqz v0, :cond_2

    const/4 v6, 0x4

    :goto_1
    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-boolean v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->sawInputEOS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v0, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    move-result v7

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v0, v0, Lcom/samsung/android/media/MotionPhotoConverter;->mSrcExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    goto :goto_0

    :cond_2
    move v6, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "MotionPhotoConverter"

    const-string/jumbo v1, "decoder: input buffer is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 9

    const/4 v8, 0x0

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "MotionPhotoConverter"

    const-string/jumbo v5, "decoder: saw output EOS!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->sawOutputEOS:Z

    :cond_0
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    add-int/lit8 v4, v0, 0x10

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v2, v0, v4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x4

    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x8

    iget-wide v6, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->this$0:Lcom/samsung/android/media/MotionPhotoConverter;

    iget-object v4, v4, Lcom/samsung/android/media/MotionPhotoConverter;->mDecoder2EncoderQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->sawInputEOS:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/media/MotionPhotoConverter$1;->sawOutputEOS:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "MotionPhotoConverter"

    const-string/jumbo v5, "decoder: Decoding was completed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    invoke-virtual {p1, p2, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "MotionPhotoConverter"

    const-string/jumbo v5, "decoder: output buffer is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    const-string/jumbo v0, "MotionPhotoConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "decoder: onOutputFormatChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
