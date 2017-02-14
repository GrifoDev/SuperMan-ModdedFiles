.class public Lsun/net/www/MeteredStream;
.super Ljava/io/FilterInputStream;
.source "MeteredStream.java"


# instance fields
.field protected closed:Z

.field protected count:J

.field protected expected:J

.field protected markLimit:I

.field protected markedCount:J

.field protected pi:Lsun/net/ProgressSource;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lsun/net/ProgressSource;J)V
    .locals 5

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    iput-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    iput-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    iput-object p2, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    iput-wide p3, p0, Lsun/net/www/MeteredStream;->expected:J

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2, v3, p3, p4}, Lsun/net/ProgressSource;->updateProgress(JJ)V

    :cond_0
    return-void
.end method

.method private isMarked()Z
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    if-gez v0, :cond_0

    return v4

    :cond_0
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    sub-long/2addr v0, v2

    iget v2, p0, Lsun/net/www/MeteredStream;->markLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final justRead(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    :cond_0
    return-void

    :cond_1
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    sub-long/2addr v0, v2

    iget v2, p0, Lsun/net/www/MeteredStream;->markLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    :cond_2
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lsun/net/ProgressSource;->updateProgress(JJ)V

    :cond_3
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->expected:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->expected:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

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

    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v0}, Lsun/net/ProgressSource;->finishTracking()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    iget-object v0, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v0}, Lsun/net/ProgressSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/io/FilterInputStream;->finalize()V

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->markedCount:J

    iput p1, p0, Lsun/net/www/MeteredStream;->markLimit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v2, :cond_1

    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    int-to-long v2, v0

    :try_start_2
    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Resetting to an invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->markedCount:J

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    monitor-exit p0

    return-wide v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    instance-of v2, v2, Lsun/net/www/http/ChunkedInputStream;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    :goto_0
    invoke-direct {p0, p1, p2}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_1
    :try_start_2
    iget-wide v2, p0, Lsun/net/www/MeteredStream;->expected:J

    iget-wide v4, p0, Lsun/net/www/MeteredStream;->count:J

    sub-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->expected:J

    iget-wide v4, p0, Lsun/net/www/MeteredStream;->count:J

    sub-long v0, v2, v4

    :goto_1
    iget-object v2, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide p1

    goto :goto_0

    :cond_2
    move-wide v0, p1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
