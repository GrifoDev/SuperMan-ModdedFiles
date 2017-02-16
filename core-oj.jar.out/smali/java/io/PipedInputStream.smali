.class public Ljava/io/PipedInputStream;
.super Ljava/io/InputStream;
.source "PipedInputStream.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEFAULT_PIPE_SIZE:I = 0x400

.field protected static final PIPE_SIZE:I = 0x400


# instance fields
.field protected buffer:[B

.field volatile closedByReader:Z

.field closedByWriter:Z

.field connected:Z

.field protected in:I

.field protected out:I

.field readSide:Ljava/lang/Thread;

.field writeSide:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/io/PipedInputStream;->-assertionsDisabled:Z

    .line 56
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 57
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 58
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 59
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 99
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 144
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/io/PipedInputStream;->initPipe(I)V

    .line 143
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "pipeSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 57
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 58
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 59
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 99
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 160
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;->initPipe(I)V

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 1
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;I)V
    .locals 2
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 57
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 58
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 59
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 99
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    .line 131
    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;->initPipe(I)V

    .line 132
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    .line 130
    return-void
.end method

.method private awaitSpace()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    :goto_0
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v1, v2, :cond_0

    .line 275
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 280
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    goto :goto_0

    .line 273
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method private checkStateForReceive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->connected:Z

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    if-eqz v0, :cond_2

    .line 267
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_2
    iget-object v0, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    :cond_3
    return-void

    .line 269
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Read end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initPipe(I)V
    .locals 2
    .param p1, "pipeSize"    # I

    .prologue
    .line 164
    if-gtz p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pipe Size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    .line 163
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 444
    :try_start_0
    iget v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    monitor-exit p0

    .line 445
    return v1

    .line 446
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v0, v1, :cond_1

    .line 447
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 448
    :cond_1
    :try_start_2
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-le v0, v1, :cond_2

    .line 449
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 451
    :cond_2
    :try_start_3
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    .line 462
    monitor-enter p0

    .line 463
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 460
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/io/PipedOutputStream;)V
    .locals 0
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1, p0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 194
    return-void
.end method

.method public declared-synchronized read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    monitor-enter p0

    .line 316
    :try_start_0
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->connected:Z

    if-nez v3, :cond_0

    .line 317
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Pipe not connected"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 318
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    if-eqz v3, :cond_1

    .line 319
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Pipe closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 320
    :cond_1
    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    .line 326
    const/4 v2, 0x2

    .line 327
    .local v2, "trials":I
    :goto_0
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-gez v3, :cond_7

    .line 328
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByWriter:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit p0

    .line 330
    return v6

    .line 321
    .end local v2    # "trials":I
    :cond_3
    :try_start_2
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    if-nez v3, :cond_2

    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-gez v3, :cond_2

    .line 322
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Write end dead"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    .restart local v2    # "trials":I
    :cond_4
    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 336
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    const-wide/16 v4, 0x3e8

    :try_start_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 345
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    goto :goto_0

    .line 332
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_5

    .line 333
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Pipe broken"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 348
    :cond_7
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v3, v3, v4

    and-int/lit16 v1, v3, 0xff

    .line 349
    .local v1, "ret":I
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_8

    .line 350
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    .line 352
    :cond_8
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v3, v4, :cond_9

    .line 354
    const/4 v3, -0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    monitor-exit p0

    .line 357
    return v1
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    monitor-enter p0

    .line 385
    if-nez p1, :cond_0

    .line 386
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 387
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 388
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 387
    :cond_2
    array-length v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, p2

    if-gt p3, v3, :cond_1

    .line 389
    if-nez p3, :cond_3

    monitor-exit p0

    .line 390
    return v4

    .line 394
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 395
    .local v1, "c":I
    if-gez v1, :cond_4

    monitor-exit p0

    .line 396
    return v5

    .line 398
    :cond_4
    int-to-byte v3, v1

    :try_start_3
    aput-byte v3, p1, p2

    .line 399
    const/4 v2, 0x1

    .line 400
    .local v2, "rlen":I
    :cond_5
    :goto_0
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-ltz v3, :cond_9

    const/4 v3, 0x1

    if-le p3, v3, :cond_9

    .line 404
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-le v3, v4, :cond_8

    .line 405
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v3, v4

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 411
    .local v0, "available":I
    :goto_1
    add-int/lit8 v3, p3, -0x1

    if-le v0, v3, :cond_6

    .line 412
    add-int/lit8 v0, p3, -0x1

    .line 414
    :cond_6
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    add-int v5, p2, v2

    invoke-static {v3, v4, p1, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 415
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v3, v0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    .line 416
    add-int/2addr v2, v0

    .line 417
    sub-int/2addr p3, v0

    .line 419
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_7

    .line 420
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    .line 422
    :cond_7
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v3, v4, :cond_5

    .line 424
    const/4 v3, -0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I

    goto :goto_0

    .line 407
    .end local v0    # "available":I
    :cond_8
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int v0, v3, v4

    .restart local v0    # "available":I
    goto :goto_1

    .end local v0    # "available":I
    :cond_9
    monitor-exit p0

    .line 427
    return v2
.end method

.method protected declared-synchronized receive(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 208
    :try_start_0
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    .line 209
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    .line 210
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v0, v1, :cond_0

    .line 211
    invoke-direct {p0}, Ljava/io/PipedInputStream;->awaitSpace()V

    .line 212
    :cond_0
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    if-gez v0, :cond_1

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    .line 216
    :cond_1
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 217
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 218
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    .line 207
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receive([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 233
    :try_start_0
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    .line 234
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    .line 235
    move v0, p3

    .line 236
    .local v0, "bytesToTransfer":I
    :cond_0
    :goto_0
    if-lez v0, :cond_8

    .line 237
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v2, v4, :cond_1

    .line 238
    invoke-direct {p0}, Ljava/io/PipedInputStream;->awaitSpace()V

    .line 239
    :cond_1
    const/4 v1, 0x0

    .line 240
    .local v1, "nextTransferAmount":I
    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    if-ge v2, v4, :cond_4

    .line 241
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    sub-int v1, v2, v4

    .line 250
    :cond_2
    :goto_1
    if-le v1, v0, :cond_3

    .line 251
    move v1, v0

    .line 252
    :cond_3
    sget-boolean v2, Ljava/io/PipedInputStream;->-assertionsDisabled:Z

    if-nez v2, :cond_7

    if-lez v1, :cond_6

    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bytesToTransfer":I
    .end local v1    # "nextTransferAmount":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 242
    .restart local v0    # "bytesToTransfer":I
    .restart local v1    # "nextTransferAmount":I
    :cond_4
    :try_start_1
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-ge v2, v4, :cond_2

    .line 243
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 244
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedInputStream;->out:I

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    .line 245
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    sub-int v1, v2, v4

    goto :goto_1

    .line 247
    :cond_5
    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    sub-int v1, v2, v4

    goto :goto_1

    :cond_6
    move v2, v3

    .line 252
    goto :goto_2

    .line 253
    :cond_7
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    invoke-static {p1, p2, v2, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 254
    sub-int/2addr v0, v1

    .line 255
    add-int/2addr p2, v1

    .line 256
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    .line 257
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 258
    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1    # "nextTransferAmount":I
    :cond_8
    monitor-exit p0

    .line 232
    return-void
.end method

.method declared-synchronized receivedLast()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 297
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 296
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
