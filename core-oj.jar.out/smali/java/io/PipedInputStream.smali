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

    const-class v0, Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/io/PipedInputStream;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/io/PipedInputStream;->initPipe(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;->initPipe(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;->initPipe(I)V

    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    return-void
.end method

.method private awaitSpace()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    goto :goto_0

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

    iget-boolean v0, p0, Ljava/io/PipedInputStream;->connected:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Read end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initPipe(I)V
    .locals 2

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pipe Size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

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

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-le v0, v1, :cond_2

    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/io/PipedOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    return-void
.end method

.method public declared-synchronized read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, -0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->connected:Z

    if-nez v3, :cond_0

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

    :cond_0
    :try_start_1
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Pipe closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    const/4 v2, 0x2

    :goto_0
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-gez v3, :cond_7

    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByWriter:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit p0

    return v6

    :cond_3
    :try_start_2
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    if-nez v3, :cond_2

    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-gez v3, :cond_2

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Write end dead"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v4, 0x3e8

    :try_start_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_5

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Pipe broken"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/PipedInputStream;->out:I

    aget-byte v3, v3, v4

    and-int/lit16 v1, v3, 0xff

    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_8

    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    :cond_8
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v3, v4, :cond_9

    const/4 v3, -0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    monitor-exit p0

    return v1
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v4, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

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

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    :cond_2
    array-length v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v3, p2

    if-gt p3, v3, :cond_1

    if-nez p3, :cond_3

    monitor-exit p0

    return v4

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-gez v1, :cond_4

    monitor-exit p0

    return v5

    :cond_4
    int-to-byte v3, v1

    :try_start_3
    aput-byte v3, p1, p2

    const/4 v2, 0x1

    :cond_5
    :goto_0
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-ltz v3, :cond_9

    const/4 v3, 0x1

    if-le p3, v3, :cond_9

    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-le v3, v4, :cond_8

    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v3, v4

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    add-int/lit8 v3, p3, -0x1

    if-le v0, v3, :cond_6

    add-int/lit8 v0, p3, -0x1

    :cond_6
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    add-int v5, p2, v2

    invoke-static {v3, v4, p1, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v3, v0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    add-int/2addr v2, v0

    sub-int/2addr p3, v0

    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_7

    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    :cond_7
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v3, v4, :cond_5

    const/4 v3, -0x1

    iput v3, p0, Ljava/io/PipedInputStream;->in:I

    goto :goto_0

    :cond_8
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v3, v3

    iget v4, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int v0, v3, v4

    goto :goto_1

    :cond_9
    monitor-exit p0

    return v2
.end method

.method protected declared-synchronized receive(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ljava/io/PipedInputStream;->awaitSpace()V

    :cond_0
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    :cond_1
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receive([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    move v0, p3

    :cond_0
    :goto_0
    if-lez v0, :cond_8

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v2, v4, :cond_1

    invoke-direct {p0}, Ljava/io/PipedInputStream;->awaitSpace()V

    :cond_1
    const/4 v1, 0x0

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    if-ge v2, v4, :cond_4

    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    sub-int v1, v2, v4

    :cond_2
    :goto_1
    if-le v1, v0, :cond_3

    move v1, v0

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

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    :try_start_1
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    if-ge v2, v4, :cond_2

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedInputStream;->out:I

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    sub-int v1, v2, v4

    goto :goto_1

    :cond_5
    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    sub-int v1, v2, v4

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    :cond_7
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    invoke-static {p1, p2, v2, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int/2addr v0, v1

    add-int/2addr p2, v1

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    if-lt v2, v4, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_8
    monitor-exit p0

    return-void
.end method

.method declared-synchronized receivedLast()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
