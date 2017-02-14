.class public Ljava/io/CharArrayReader;
.super Ljava/io/Reader;
.source "CharArrayReader.java"


# instance fields
.field protected buf:[C

.field protected count:I

.field protected markedPos:I

.field protected pos:I


# direct methods
.method public constructor <init>([C)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    iput v0, p0, Ljava/io/CharArrayReader;->pos:I

    array-length v0, p1

    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    if-ltz p2, :cond_0

    array-length v0, p1

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-ltz p3, :cond_0

    add-int v0, p2, p3

    if-ltz v0, :cond_0

    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    iput p2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    iput p2, p0, Ljava/io/CharArrayReader;->markedPos:I

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

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

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    return-void
.end method

.method public mark(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    aget-char v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public read([CII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    if-ltz p2, :cond_0

    array-length v0, p1

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    if-ltz p3, :cond_0

    add-int v0, p2, p3

    :try_start_1
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v0, v2, :cond_0

    add-int v0, p2, p3

    if-ltz v0, :cond_0

    if-nez p3, :cond_2

    monitor-exit v1

    return v3

    :cond_2
    :try_start_2
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v0, v2, :cond_3

    const/4 v0, -0x1

    monitor-exit v1

    return v0

    :cond_3
    :try_start_3
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v0, p3

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-le v0, v2, :cond_4

    iget v0, p0, Ljava/io/CharArrayReader;->count:I

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int p3, v0, v2

    :cond_4
    if-gtz p3, :cond_5

    monitor-exit v1

    return v3

    :cond_5
    :try_start_4
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v1

    return p3
.end method

.method public ready()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    return v0

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

    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    iget v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    iput v0, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, p0, Ljava/io/CharArrayReader;->count:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget v0, p0, Ljava/io/CharArrayReader;->count:I

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v2

    int-to-long p1, v0

    :cond_0
    cmp-long v0, p1, v6

    if-gez v0, :cond_1

    monitor-exit v1

    return-wide v6

    :cond_1
    :try_start_1
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    long-to-int v0, v2

    iput v0, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-wide p1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
