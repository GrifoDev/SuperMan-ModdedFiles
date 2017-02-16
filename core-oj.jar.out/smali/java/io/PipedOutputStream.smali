.class public Ljava/io/PipedOutputStream;
.super Ljava/io/OutputStream;
.source "PipedOutputStream.java"


# instance fields
.field private sink:Ljava/io/PipedInputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/PipedInputStream;)V
    .locals 0
    .param p1, "snk"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    .line 63
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

    .prologue
    .line 175
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/io/PipedInputStream;->receivedLast()V

    .line 174
    :cond_0
    return-void
.end method

.method public declared-synchronized connect(Ljava/io/PipedInputStream;)V
    .locals 2
    .param p1, "snk"    # Ljava/io/PipedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 97
    if-nez p1, :cond_0

    .line 98
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

    .line 99
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-nez v0, :cond_1

    iget-boolean v0, p1, Ljava/io/PipedInputStream;->connected:Z

    if-eqz v0, :cond_2

    .line 100
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    iput-object p1, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    .line 103
    const/4 v0, -0x1

    iput v0, p1, Ljava/io/PipedInputStream;->in:I

    .line 104
    const/4 v0, 0x0

    iput v0, p1, Ljava/io/PipedInputStream;->out:I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/io/PipedInputStream;->connected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 96
    return-void
.end method

.method public declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    .line 159
    return-void

    .line 161
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PipedInputStream;->receive(I)V

    .line 118
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    if-nez p1, :cond_1

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 143
    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    if-le p2, v0, :cond_3

    .line 145
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 143
    :cond_3
    if-ltz p3, :cond_2

    .line 144
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    .line 146
    if-nez p3, :cond_4

    .line 147
    return-void

    .line 149
    :cond_4
    iget-object v0, p0, Ljava/io/PipedOutputStream;->sink:Ljava/io/PipedInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedInputStream;->receive([BII)V

    .line 138
    return-void
.end method
