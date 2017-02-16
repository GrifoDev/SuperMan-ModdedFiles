.class public Lsun/net/www/http/PosterOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "PosterOutputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 102
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lsun/net/www/http/PosterOutputStream;->closed:Z

    .line 103
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 101
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/PosterOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 92
    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 90
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1, "b"    # I

    .prologue
    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/PosterOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 61
    return-void

    .line 63
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 59
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/PosterOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 76
    return-void

    .line 78
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 74
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
