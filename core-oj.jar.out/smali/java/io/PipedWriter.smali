.class public Ljava/io/PipedWriter;
.super Ljava/io/Writer;
.source "PipedWriter.java"


# instance fields
.field private closed:Z

.field private sink:Ljava/io/PipedReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedReader;)V
    .locals 1
    .param p1, "snk"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    .line 59
    invoke-virtual {p0, p1}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 58
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
    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    .line 180
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v0}, Ljava/io/PipedReader;->receivedLast()V

    .line 178
    :cond_0
    return-void
.end method

.method public declared-synchronized connect(Ljava/io/PipedReader;)V
    .locals 2
    .param p1, "snk"    # Ljava/io/PipedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 92
    if-nez p1, :cond_0

    .line 93
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

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-nez v0, :cond_1

    iget-boolean v0, p1, Ljava/io/PipedReader;->connected:Z

    if-eqz v0, :cond_2

    .line 95
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_2
    iget-boolean v0, p1, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    if-eqz v0, :cond_4

    .line 97
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_4
    iput-object p1, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    .line 101
    const/4 v0, -0x1

    iput v0, p1, Ljava/io/PipedReader;->in:I

    .line 102
    const/4 v0, 0x0

    iput v0, p1, Ljava/io/PipedReader;->out:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/io/PipedReader;->connected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 91
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

    .line 161
    :try_start_0
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    iget-boolean v0, v0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/io/PipedWriter;->closed:Z

    if-eqz v0, :cond_1

    .line 163
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

    .line 165
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
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

    .line 160
    return-void

    .line 165
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
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v0, p1}, Ljava/io/PipedReader;->receive(I)V

    .line 120
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 150
    :cond_1
    iget-object v0, p0, Ljava/io/PipedWriter;->sink:Ljava/io/PipedReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PipedReader;->receive([CII)V

    .line 144
    return-void
.end method
