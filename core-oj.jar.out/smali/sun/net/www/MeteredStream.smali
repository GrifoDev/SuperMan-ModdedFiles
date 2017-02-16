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
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "pi"    # Lsun/net/ProgressSource;
    .param p3, "expected"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    .line 43
    iput-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    .line 44
    iput-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    .line 52
    iput-object p2, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    .line 53
    iput-wide p3, p0, Lsun/net/www/MeteredStream;->expected:J

    .line 55
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2, v2, v3, p3, p4}, Lsun/net/ProgressSource;->updateProgress(JJ)V

    .line 48
    :cond_0
    return-void
.end method

.method private isMarked()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    iget v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    if-gez v0, :cond_0

    .line 104
    return v4

    .line 108
    :cond_0
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    sub-long/2addr v0, v2

    iget v2, p0, Lsun/net/www/MeteredStream;->markLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 109
    return v4

    .line 113
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final justRead(J)V
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 67
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    .line 70
    :cond_0
    return-void

    .line 73
    :cond_1
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    .line 78
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->markedCount:J

    sub-long/2addr v0, v2

    iget v2, p0, Lsun/net/www/MeteredStream;->markLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lsun/net/www/MeteredStream;->markLimit:I

    .line 82
    :cond_2
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_3

    .line 83
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v4, p0, Lsun/net/www/MeteredStream;->expected:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lsun/net/ProgressSource;->updateProgress(JJ)V

    .line 85
    :cond_3
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    return-void

    .line 91
    :cond_4
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->expected:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 92
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iget-wide v2, p0, Lsun/net/www/MeteredStream;->expected:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 93
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    .line 60
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

    .prologue
    monitor-enter p0

    .line 170
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

    .prologue
    .line 159
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    if-eqz v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v0}, Lsun/net/ProgressSource;->finishTracking()V

    .line 165
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    .line 166
    iget-object v0, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 158
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/MeteredStream;->close()V

    .line 209
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lsun/net/www/MeteredStream;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v0}, Lsun/net/ProgressSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->finalize()V

    .line 206
    return-void

    .line 212
    :catchall_0
    move-exception v0

    .line 214
    invoke-super {p0}, Ljava/io/FilterInputStream;->finalize()V

    .line 212
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readLimit"    # I

    .prologue
    monitor-enter p0

    .line 174
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 175
    return-void

    .line 177
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 182
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->markedCount:J

    .line 183
    iput p1, p0, Lsun/net/www/MeteredStream;->markLimit:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 173
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    return v0

    .line 203
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

    .prologue
    const/4 v2, -0x1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v1, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 118
    return v2

    .line 120
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 121
    .local v0, "c":I
    if-eq v0, v2, :cond_1

    .line 122
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 126
    return v0

    .line 124
    :cond_1
    int-to-long v2, v0

    :try_start_2
    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v0    # "c":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 131
    :try_start_0
    iget-boolean v1, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 134
    :cond_0
    :try_start_1
    iget-object v1, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 135
    .local v0, "n":I
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 136
    return v0

    .end local v0    # "n":I
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

    .prologue
    monitor-enter p0

    .line 187
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 188
    return-void

    .line 191
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/MeteredStream;->isMarked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
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

    .line 195
    :cond_1
    :try_start_2
    iget-wide v0, p0, Lsun/net/www/MeteredStream;->markedCount:J

    iput-wide v0, p0, Lsun/net/www/MeteredStream;->count:J

    .line 196
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 186
    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 142
    :try_start_0
    iget-boolean v2, p0, Lsun/net/www/MeteredStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 143
    const-wide/16 v2, 0x0

    monitor-exit p0

    return-wide v2

    .line 146
    :cond_0
    :try_start_1
    iget-object v2, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    instance-of v2, v2, Lsun/net/www/http/ChunkedInputStream;

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 154
    :goto_0
    invoke-direct {p0, p1, p2}, Lsun/net/www/MeteredStream;->justRead(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 155
    return-wide p1

    .line 151
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

    .line 152
    .local v0, "min":J
    :goto_1
    iget-object v2, p0, Lsun/net/www/MeteredStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide p1

    goto :goto_0

    .line 151
    .end local v0    # "min":J
    :cond_2
    move-wide v0, p1

    .restart local v0    # "min":J
    goto :goto_1

    .end local v0    # "min":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
