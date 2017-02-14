.class public Ljava/io/BufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "BufferedInputStream.java"


# static fields
.field private static final bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Ljava/io/BufferedInputStream;",
            "[B>;"
        }
    .end annotation
.end field

.field private static defaultBufferSize:I


# instance fields
.field protected volatile buf:[B

.field protected count:I

.field protected marklimit:I

.field protected markpos:I

.field protected pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x2000

    sput v0, Ljava/io/BufferedInputStream;->defaultBufferSize:I

    const-class v0, Ljava/io/BufferedInputStream;

    const-class v1, [B

    const-string/jumbo v2, "buf"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    sget v0, Ljava/io/BufferedInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gtz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    return-void
.end method

.method private fill()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v0

    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v5, :cond_2

    iput v7, p0, Ljava/io/BufferedInputStream;->pos:I

    :cond_0
    :goto_0
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v5, p0, Ljava/io/BufferedInputStream;->count:I

    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v5

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v7, v0

    iget v8, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_1

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v5, v1

    iput v5, p0, Ljava/io/BufferedInputStream;->count:I

    :cond_1
    return-void

    :cond_2
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v6, v0

    if-lt v5, v6, :cond_0

    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-lez v5, :cond_3

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int v4, v5, v6

    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    invoke-static {v0, v5, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    goto :goto_0

    :cond_3
    array-length v5, v0

    iget v6, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-lt v5, v6, :cond_4

    const/4 v5, -0x1

    iput v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v7, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_0

    :cond_4
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    mul-int/lit8 v3, v5, 0x2

    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-le v3, v5, :cond_5

    iget v3, p0, Ljava/io/BufferedInputStream;->marklimit:I

    :cond_5
    new-array v2, v3, [B

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v0, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v5, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Stream closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    move-object v0, v2

    goto :goto_0
.end method

.method private getBufIfOpen()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private getInIfOpen()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method private read1([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v0, v2, v3

    if-gtz v0, :cond_1

    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v2

    array-length v2, v2

    if-lt p3, v2, :cond_0

    iget v2, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v2, :cond_0

    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    return v2

    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v0, v2, v3

    if-gtz v0, :cond_1

    const/4 v2, -0x1

    return v2

    :cond_1
    if-ge v0, p3, :cond_2

    move v1, v0

    :goto_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v2

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    return v1

    :cond_2
    move v1, p3

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v2, 0x7fffffff

    monitor-enter p0

    :try_start_0
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v1, v3, v4

    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    sub-int v3, v2, v0

    if-le v1, v3, :cond_0

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    add-int v2, v1, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :cond_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    if-eqz v0, :cond_2

    sget-object v2, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    iput-object v3, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v1, p0, Ljava/io/BufferedInputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v0

    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    or-int v3, p2, p3

    add-int v4, p2, p3

    or-int/2addr v3, v4

    array-length v4, p1

    add-int v5, p2, p3

    sub-int/2addr v4, v5

    or-int/2addr v3, v4

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    if-nez p3, :cond_1

    monitor-exit p0

    return v6

    :cond_1
    const/4 v1, 0x0

    :cond_2
    add-int v3, p2, v1

    sub-int v4, p3, v1

    :try_start_1
    invoke-direct {p0, p1, v3, v4}, Ljava/io/BufferedInputStream;->read1([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-gtz v2, :cond_4

    if-nez v1, :cond_3

    :goto_0
    monitor-exit p0

    return v2

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    add-int/2addr v1, v2

    if-lt v1, p3, :cond_5

    monitor-exit p0

    return v1

    :cond_5
    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-gtz v3, :cond_2

    monitor-exit p0

    return v1
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
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Resetting to invalid mark"

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
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, p1, v6

    if-gtz v4, :cond_0

    monitor-exit p0

    return-wide v6

    :cond_0
    :try_start_1
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    cmp-long v4, v0, v6

    if-gtz v4, :cond_2

    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v4, :cond_1

    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    :cond_1
    :try_start_2
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v5

    int-to-long v0, v4

    cmp-long v4, v0, v6

    if-gtz v4, :cond_2

    monitor-exit p0

    return-wide v6

    :cond_2
    cmp-long v4, v0, p1

    if-gez v4, :cond_3

    move-wide v2, v0

    :goto_0
    :try_start_3
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-wide v2

    :cond_3
    move-wide v2, p1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
