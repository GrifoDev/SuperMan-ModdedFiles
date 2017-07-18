.class public Ljava/io/PipedWriter;
.super Ljava/io/Writer;
.source "PipedWriter.java"


# instance fields
.field private closed:Z

.field private sink:Ljava/io/PipedReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    invoke-virtual {p0, p1}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v0}, Ljava/io/PipedReader;->receivedLast()V

    :cond_0
    return-void
.end method

.method public declared-synchronized connect(Ljava/io/PipedReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-nez v0, :cond_1

    iget-boolean v0, p1, Ljava/io/PipedReader;->connected:Z

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p1, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p1, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    const/4 v0, -0x1

    iput v0, p1, Ljava/io/PipedReader;->in:I

    const/4 v0, 0x0

    iput v0, p1, Ljava/io/PipedReader;->out:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/io/PipedReader;->connected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    iget-boolean v0, v0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v0, p1}, Ljava/io/PipedReader;->receive(I)V

    return-void
.end method

.method public write([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedReader;->receive([CII)V

    return-void
.end method
