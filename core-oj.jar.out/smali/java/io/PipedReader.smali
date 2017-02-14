.class public Ljava/io/PipedReader;
.super Ljava/io/Reader;
.source "PipedReader.java"


# static fields
.field private static final DEFAULT_PIPE_SIZE:I = 0x400


# instance fields
.field buffer:[C

.field closedByReader:Z

.field closedByWriter:Z

.field connected:Z

.field in:I

.field out:I

.field readSide:Ljava/lang/Thread;

.field writeSide:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    iput-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    iput v1, p0, Ljava/io/PipedReader;->out:I

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/io/PipedReader;->initPipe(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    iput-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    iput v1, p0, Ljava/io/PipedReader;->out:I

    invoke-direct {p0, p1}, Ljava/io/PipedReader;->initPipe(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Ljava/io/PipedReader;-><init>(Ljava/io/PipedWriter;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    iput-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    iput v1, p0, Ljava/io/PipedReader;->out:I

    invoke-direct {p0, p2}, Ljava/io/PipedReader;->initPipe(I)V

    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    return-void
.end method

.method private initPipe(I)V
    .locals 2

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pipe size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    return-void
.end method

.method public connect(Ljava/io/PipedWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

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
    iget-boolean v3, p0, Ljava/io/PipedReader;->connected:Z

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
    iget-boolean v3, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Pipe closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v3, :cond_2

    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    const/4 v2, 0x2

    :goto_0
    iget v3, p0, Ljava/io/PipedReader;->in:I

    if-gez v3, :cond_7

    iget-boolean v3, p0, Ljava/io/PipedReader;->closedByWriter:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit p0

    return v6

    :cond_3
    :try_start_2
    iget-boolean v3, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v3, :cond_2

    iget v3, p0, Ljava/io/PipedReader;->in:I

    if-gez v3, :cond_2

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Write end dead"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

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
    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    iget v4, p0, Ljava/io/PipedReader;->out:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/PipedReader;->out:I

    aget-char v1, v3, v4

    iget v3, p0, Ljava/io/PipedReader;->out:I

    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v4, v4

    if-lt v3, v4, :cond_8

    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedReader;->out:I

    :cond_8
    iget v3, p0, Ljava/io/PipedReader;->in:I

    iget v4, p0, Ljava/io/PipedReader;->out:I

    if-ne v3, v4, :cond_9

    const/4 v3, -0x1

    iput v3, p0, Ljava/io/PipedReader;->in:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    monitor-exit p0

    return v1
.end method

.method public declared-synchronized read([CII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Ljava/io/PipedReader;->connected:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Pipe not connected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Pipe closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    if-ltz p2, :cond_3

    array-length v2, p1

    if-le p2, v2, :cond_5

    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_4
    iget-boolean v2, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v2, :cond_2

    iget v2, p0, Ljava/io/PipedReader;->in:I

    if-gez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Write end dead"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    if-ltz p3, :cond_3

    add-int v2, p2, p3

    array-length v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v3, :cond_3

    add-int v2, p2, p3

    if-ltz v2, :cond_3

    if-nez p3, :cond_6

    monitor-exit p0

    return v4

    :cond_6
    :try_start_2
    invoke-virtual {p0}, Ljava/io/PipedReader;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-gez v0, :cond_7

    monitor-exit p0

    return v5

    :cond_7
    int-to-char v2, v0

    :try_start_3
    aput-char v2, p1, p2

    const/4 v1, 0x1

    :cond_8
    :goto_0
    iget v2, p0, Ljava/io/PipedReader;->in:I

    if-ltz v2, :cond_a

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_a

    add-int v2, p2, v1

    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    iget v4, p0, Ljava/io/PipedReader;->out:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/PipedReader;->out:I

    aget-char v3, v3, v4

    aput-char v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Ljava/io/PipedReader;->out:I

    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v3, v3

    if-lt v2, v3, :cond_9

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/PipedReader;->out:I

    :cond_9
    iget v2, p0, Ljava/io/PipedReader;->in:I

    iget v3, p0, Ljava/io/PipedReader;->out:I

    if-ne v2, v3, :cond_8

    const/4 v2, -0x1

    iput v2, p0, Ljava/io/PipedReader;->in:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_a
    monitor-exit p0

    return v1
.end method

.method public declared-synchronized ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Ljava/io/PipedReader;->in:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v0, :cond_4

    monitor-exit p0

    return v1

    :cond_3
    :try_start_2
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v0, :cond_2

    iget v0, p0, Ljava/io/PipedReader;->in:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Write end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method declared-synchronized receive(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Pipe not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Pipe closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    :goto_0
    iget v1, p0, Ljava/io/PipedReader;->in:I

    iget v2, p0, Ljava/io/PipedReader;->out:I

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Read end dead"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v1, p0, Ljava/io/PipedReader;->in:I

    if-gez v1, :cond_8

    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->in:I

    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->out:I

    :cond_8
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedReader;->in:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    iget v1, p0, Ljava/io/PipedReader;->in:I

    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v2, v2

    if-lt v1, v2, :cond_9

    const/4 v1, 0x0

    iput v1, p0, Ljava/io/PipedReader;->in:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    monitor-exit p0

    return-void
.end method

.method declared-synchronized receive([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    :try_start_0
    aget-char v1, p1, p2

    invoke-virtual {p0, v1}, Ljava/io/PipedReader;->receive(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p2, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized receivedLast()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

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
