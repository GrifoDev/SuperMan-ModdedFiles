.class public Ljava/io/PushbackReader;
.super Ljava/io/FilterReader;
.source "PushbackReader.java"


# instance fields
.field private buf:[C

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iput p2, p0, Ljava/io/PushbackReader;->pos:I

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
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

    invoke-super {p0}, Ljava/io/FilterReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    return-void
.end method

.method public mark(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PushbackReader;->pos:I

    aget-char v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterReader;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public read([CII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v4, 0x0

    iget-object v3, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p3, :cond_3

    if-gez p3, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    if-ltz p2, :cond_1

    :try_start_3
    array-length v2, p1

    if-le p2, v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit v3

    return v4

    :cond_3
    :try_start_4
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v4, v4

    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    sub-int v0, v4, v5

    if-lez v0, :cond_5

    if-ge p3, v0, :cond_4

    move v0, p3

    :cond_4
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    invoke-static {v4, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v4, p0, Ljava/io/PushbackReader;->pos:I

    add-int/2addr v4, v0

    iput v4, p0, Ljava/io/PushbackReader;->pos:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    :cond_5
    if-lez p3, :cond_8

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterReader;->read([CII)I
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result p3

    if-ne p3, v2, :cond_7

    if-nez v0, :cond_6

    move v0, v2

    :cond_6
    monitor-exit v3

    return v0

    :cond_7
    add-int v2, v0, p3

    monitor-exit v3

    return v2

    :cond_8
    monitor-exit v3

    return v0
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-super {p0}, Ljava/io/FilterReader;->ready()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "skip value is negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v1, v1

    iget v3, p0, Ljava/io/PushbackReader;->pos:I

    sub-int v0, v1, v3

    if-lez v0, :cond_2

    int-to-long v4, v0

    cmp-long v1, p1, v4

    if-gtz v1, :cond_1

    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    int-to-long v4, v1

    add-long/2addr v4, p1

    long-to-int v1, v4

    iput v1, p0, Ljava/io/PushbackReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-wide p1

    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v1, v1

    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    int-to-long v4, v0

    sub-long/2addr p1, v4

    :cond_2
    int-to-long v4, v0

    invoke-super {p0, p1, p2}, Ljava/io/FilterReader;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    add-long/2addr v4, v6

    monitor-exit v2

    return-wide v4

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unread(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Pushback buffer overflow"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/io/PushbackReader;->pos:I

    int-to-char v3, p1

    aput-char v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public unread([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PushbackReader;->unread([CII)V

    return-void
.end method

.method public unread([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Pushback buffer overflow"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method
