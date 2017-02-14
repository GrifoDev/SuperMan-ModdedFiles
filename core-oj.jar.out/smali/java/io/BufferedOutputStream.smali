.class public Ljava/io/BufferedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "BufferedOutputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    return-void
.end method

.method private flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    iget v2, p0, Ljava/io/BufferedOutputStream;->count:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Ljava/io/BufferedOutputStream;->count:I

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    :cond_0
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/BufferedOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v0, v0

    if-lt p3, v0, :cond_0

    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    :cond_1
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/BufferedOutputStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
