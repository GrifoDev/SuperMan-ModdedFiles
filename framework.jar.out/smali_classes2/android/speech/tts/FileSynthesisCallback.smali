.class Landroid/speech/tts/FileSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "FileSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileSynthesisRequest"

.field private static final WAV_FORMAT_PCM:S = 0x1s

.field private static final WAV_HEADER_LENGTH:I = 0x2c


# instance fields
.field private mAudioFormat:I

.field private mChannelCount:I

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private mDone:Z

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mSampleRateInHz:I

.field private mStarted:Z

.field private final mStateLock:Ljava/lang/Object;

.field protected mStatusCode:I


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Z)V
    .locals 2
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .param p2, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p3, "clientIsUsingV2"    # Z

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p3}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 51
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 52
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 60
    iput-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 61
    iput-object p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 62
    iput v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 58
    return-void
.end method

.method private cleanUp()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    .line 84
    return-void
.end method

.method private closeFile()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 91
    return-void
.end method

.method private makeWavHeader(IIII)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I
    .param p4, "dataLength"    # I

    .prologue
    const/4 v7, 0x4

    .line 286
    invoke-static {p2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v5

    .line 287
    .local v5, "sampleSizeInBytes":I
    mul-int v6, p1, v5

    mul-int v2, v6, p3

    .line 288
    .local v2, "byteRate":I
    mul-int v6, v5, p3

    int-to-short v1, v6

    .line 289
    .local v1, "blockAlign":S
    mul-int/lit8 v6, v5, 0x8

    int-to-short v0, v6

    .line 291
    .local v0, "bitsPerSample":S
    const/16 v6, 0x2c

    new-array v4, v6, [B

    .line 292
    .local v4, "headerBuf":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 293
    .local v3, "header":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 295
    new-array v6, v7, [B

    fill-array-data v6, :array_0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 296
    add-int/lit8 v6, p4, 0x2c

    add-int/lit8 v6, v6, -0x8

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 297
    new-array v6, v7, [B

    fill-array-data v6, :array_1

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 298
    new-array v6, v7, [B

    fill-array-data v6, :array_2

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 299
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 300
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 301
    int-to-short v6, p3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 304
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 305
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 306
    new-array v6, v7, [B

    fill-array-data v6, :array_3

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 307
    invoke-virtual {v3, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 308
    invoke-virtual {v3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 310
    return-object v3

    .line 295
    nop

    :array_0
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    .line 297
    :array_1
    .array-data 1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    .line 298
    :array_2
    .array-data 1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data

    .line 306
    :array_3
    .array-data 1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 160
    :try_start_0
    iget v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    const/4 v5, -0x2

    if-ne v3, v5, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    .line 164
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit v4

    .line 166
    return v6

    .line 168
    :cond_1
    :try_start_2
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v3, :cond_2

    .line 169
    const-string/jumbo v3, "FileSynthesisRequest"

    const-string/jumbo v5, "File not open"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v3, -0x5

    iput v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 171
    return v6

    .line 173
    :cond_2
    :try_start_3
    iget-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    if-nez v3, :cond_3

    .line 174
    const-string/jumbo v3, "FileSynthesisRequest"

    const-string/jumbo v5, "Start method was not called"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 175
    return v6

    .line 177
    :cond_3
    :try_start_4
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    monitor-exit v4

    .line 180
    new-array v0, p3, [B

    .line 181
    .local v0, "bufferCopy":[B
    invoke-static {p1, p2, v0, v7, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 182
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v3, v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnAudioAvailable([B)V

    .line 185
    :try_start_5
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 186
    return v7

    .line 159
    .end local v0    # "bufferCopy":[B
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 187
    .restart local v0    # "bufferCopy":[B
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v1

    .line 188
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "FileSynthesisRequest"

    const-string/jumbo v4, "Failed to write to output file descriptor"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 190
    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 191
    const/4 v3, -0x5

    iput v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v4

    .line 193
    return v6

    .line 189
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public done()I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v8, -0x2

    const/4 v10, -0x1

    .line 200
    const/4 v4, 0x0

    .line 202
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 203
    .local v5, "sampleRateInHz":I
    const/4 v0, 0x0

    .line 204
    .local v0, "audioFormat":I
    const/4 v1, 0x0

    .line 206
    .local v1, "channelCount":I
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 207
    :try_start_0
    iget-boolean v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    if-eqz v6, :cond_0

    .line 208
    const-string/jumbo v6, "FileSynthesisRequest"

    const-string/jumbo v8, "Duplicate call to done()"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 211
    return v10

    .line 213
    :cond_0
    :try_start_1
    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    if-ne v6, v8, :cond_1

    .line 215
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    monitor-exit v7

    return v6

    .line 217
    :cond_1
    :try_start_2
    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    if-eq v6, v8, :cond_2

    .line 218
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    invoke-interface {v6, v8}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 219
    return v10

    .line 221
    :cond_2
    :try_start_3
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    if-nez v6, :cond_3

    .line 222
    const-string/jumbo v6, "FileSynthesisRequest"

    const-string/jumbo v8, "File not open"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v7

    .line 223
    return v10

    .line 225
    :cond_3
    const/4 v6, 0x1

    :try_start_4
    iput-boolean v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    .line 226
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    .line 227
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    .line 228
    iget v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    .line 229
    iget v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v7

    .line 234
    const-wide/16 v6, 0x0

    :try_start_5
    invoke-virtual {v4, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 235
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x2c

    sub-long/2addr v6, v8

    long-to-int v2, v6

    .line 237
    .local v2, "dataLength":I
    invoke-direct {p0, v5, v0, v1, v2}, Landroid/speech/tts/FileSynthesisCallback;->makeWavHeader(IIII)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 236
    invoke-virtual {v4, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 239
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 240
    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    .line 241
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v6}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 242
    return v11

    .line 206
    .end local v2    # "dataLength":I
    .end local v4    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 239
    .restart local v2    # "dataLength":I
    .restart local v4    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_1
    move-exception v6

    :try_start_8
    monitor-exit v7

    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 244
    .end local v2    # "dataLength":I
    :catch_0
    move-exception v3

    .line 245
    .local v3, "ex":Ljava/io/IOException;
    const-string/jumbo v6, "FileSynthesisRequest"

    const-string/jumbo v7, "Failed to write to output file descriptor"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 247
    :try_start_9
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v6

    .line 249
    return v10

    .line 246
    :catchall_2
    move-exception v7

    monitor-exit v6

    throw v7
.end method

.method public error()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/speech/tts/FileSynthesisCallback;->error(I)V

    .line 254
    return-void
.end method

.method public error(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 261
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 262
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 263
    return-void

    .line 265
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 266
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 259
    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x2000

    return v0
.end method

.method public hasFinished()Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public hasStarted()Z
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public start(III)I
    .locals 7
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 107
    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    .line 108
    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    .line 109
    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    .line 110
    const-string/jumbo v2, "FileSynthesisRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Audio format encoding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not supported. Please use one "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 111
    const-string/jumbo v4, "of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or "

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 112
    const-string/jumbo v4, "AudioFormat.ENCODING_PCM_FLOAT"

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v2, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnBeginSynthesis(III)V

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 118
    :try_start_0
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    const/4 v4, -0x2

    if-ne v2, v4, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    .line 122
    :cond_1
    :try_start_1
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit v3

    .line 124
    return v5

    .line 126
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    if-eqz v2, :cond_3

    .line 127
    const-string/jumbo v2, "FileSynthesisRequest"

    const-string/jumbo v4, "Start called twice"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 128
    return v5

    .line 130
    :cond_3
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    .line 131
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    .line 132
    iput p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    .line 133
    iput p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    .line 135
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 136
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    monitor-exit v3

    .line 140
    const/16 v2, 0x2c

    :try_start_4
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 141
    return v6

    .line 117
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 142
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v2, "FileSynthesisRequest"

    const-string/jumbo v3, "Failed to write wav header to output file descriptor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 145
    :try_start_5
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 146
    const/4 v2, -0x5

    iput v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v3

    .line 148
    return v5

    .line 144
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method stop()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 67
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 69
    return-void

    .line 71
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_1

    monitor-exit v1

    .line 72
    return-void

    .line 75
    :cond_1
    const/4 v0, -0x2

    :try_start_2
    iput v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    .line 76
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    .line 77
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
