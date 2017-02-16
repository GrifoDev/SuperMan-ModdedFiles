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

    .prologue
    .line 53
    const/16 v0, 0x2000

    sput v0, Ljava/io/BufferedInputStream;->defaultBufferSize:I

    .line 71
    const-class v0, Ljava/io/BufferedInputStream;

    const-class v1, [B

    const-string/jumbo v2, "buf"

    .line 70
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 69
    sput-object v0, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 175
    sget v0, Ljava/io/BufferedInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .prologue
    .line 191
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 192
    if-gtz p2, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 190
    return-void
.end method

.method private fill()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 206
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v0

    .line 207
    .local v0, "buffer":[B
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v5, :cond_2

    .line 208
    iput v7, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 234
    :cond_0
    :goto_0
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v5, p0, Ljava/io/BufferedInputStream;->count:I

    .line 235
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v5

    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v7, v0

    iget v8, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 236
    .local v1, "n":I
    if-lez v1, :cond_1

    .line 237
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v5, v1

    iput v5, p0, Ljava/io/BufferedInputStream;->count:I

    .line 205
    :cond_1
    return-void

    .line 209
    .end local v1    # "n":I
    :cond_2
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v6, v0

    if-lt v5, v6, :cond_0

    .line 210
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-lez v5, :cond_3

    .line 211
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int v4, v5, v6

    .line 212
    .local v4, "sz":I
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    invoke-static {v0, v5, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 213
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 214
    iput v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    goto :goto_0

    .line 215
    .end local v4    # "sz":I
    :cond_3
    array-length v5, v0

    iget v6, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-lt v5, v6, :cond_4

    .line 216
    const/4 v5, -0x1

    iput v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 217
    iput v7, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_0

    .line 219
    :cond_4
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    mul-int/lit8 v3, v5, 0x2

    .line 220
    .local v3, "nsz":I
    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-le v3, v5, :cond_5

    .line 221
    iget v3, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 222
    :cond_5
    new-array v2, v3, [B

    .line 223
    .local v2, "nbuf":[B
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v0, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 224
    sget-object v5, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 230
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Stream closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 232
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

    .prologue
    .line 160
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 161
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 162
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
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

    .prologue
    .line 149
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 150
    .local v0, "input":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 151
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_0
    return-object v0
.end method

.method private read1([BII)I
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
    .line 266
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v0, v2, v3

    .line 267
    .local v0, "avail":I
    if-gtz v0, :cond_1

    .line 272
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v2

    array-length v2, v2

    if-lt p3, v2, :cond_0

    iget v2, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v2, :cond_0

    .line 273
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    return v2

    .line 275
    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 276
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v0, v2, v3

    .line 277
    if-gtz v0, :cond_1

    const/4 v2, -0x1

    return v2

    .line 279
    :cond_1
    if-ge v0, p3, :cond_2

    move v1, v0

    .line 280
    .local v1, "cnt":I
    :goto_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v2

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 281
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 282
    return v1

    .line 279
    .end local v1    # "cnt":I
    :cond_2
    move v1, p3

    .restart local v1    # "cnt":I
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

    .prologue
    const v2, 0x7fffffff

    monitor-enter p0

    .line 398
    :try_start_0
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v1, v3, v4

    .line 399
    .local v1, "n":I
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 400
    .local v0, "avail":I
    sub-int v3, v2, v0

    if-le v1, v3, :cond_0

    :goto_0
    monitor-exit p0

    return v2

    .line 402
    :cond_0
    add-int v2, v1, v0

    goto :goto_0

    .end local v0    # "avail":I
    .end local v1    # "n":I
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

    .prologue
    const/4 v3, 0x0

    .line 467
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .local v0, "buffer":[B
    if-eqz v0, :cond_2

    .line 468
    sget-object v2, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 470
    .local v1, "input":Ljava/io/InputStream;
    iput-object v3, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 471
    if-eqz v1, :cond_1

    .line 472
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 473
    :cond_1
    return-void

    .line 465
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_2
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    monitor-enter p0

    .line 414
    :try_start_0
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 415
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 413
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 453
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

    .prologue
    monitor-enter p0

    .line 253
    :try_start_0
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    if-lt v0, v1, :cond_0

    .line 254
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 255
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v1, p0, Ljava/io/BufferedInputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 256
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 258
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
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 325
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    .line 326
    or-int v3, p2, p3

    add-int v4, p2, p3

    or-int/2addr v3, v4

    array-length v4, p1

    add-int v5, p2, p3

    sub-int/2addr v4, v5

    or-int/2addr v3, v4

    if-gez v3, :cond_0

    .line 327
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 328
    :cond_0
    if-nez p3, :cond_1

    monitor-exit p0

    .line 329
    return v6

    .line 332
    :cond_1
    const/4 v1, 0x0

    .line 334
    .local v1, "n":I
    :cond_2
    add-int v3, p2, v1

    sub-int v4, p3, v1

    :try_start_1
    invoke-direct {p0, p1, v3, v4}, Ljava/io/BufferedInputStream;->read1([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 335
    .local v2, "nread":I
    if-gtz v2, :cond_4

    .line 336
    if-nez v1, :cond_3

    .end local v2    # "nread":I
    :goto_0
    monitor-exit p0

    return v2

    .restart local v2    # "nread":I
    :cond_3
    move v2, v1

    goto :goto_0

    .line 337
    :cond_4
    add-int/2addr v1, v2

    .line 338
    if-lt v1, p3, :cond_5

    monitor-exit p0

    .line 339
    return v1

    .line 341
    :cond_5
    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 342
    .local v0, "input":Ljava/io/InputStream;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-gtz v3, :cond_2

    monitor-exit p0

    .line 343
    return v1
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

    .line 435
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    .line 436
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v0, :cond_0

    .line 437
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

    .line 438
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 434
    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    monitor-enter p0

    .line 357
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    cmp-long v4, p1, v6

    if-gtz v4, :cond_0

    monitor-exit p0

    .line 359
    return-wide v6

    .line 361
    :cond_0
    :try_start_1
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 363
    .local v0, "avail":J
    cmp-long v4, v0, v6

    if-gtz v4, :cond_2

    .line 365
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v4, :cond_1

    .line 366
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    .line 369
    :cond_1
    :try_start_2
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 370
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v4, v5

    int-to-long v0, v4

    .line 371
    cmp-long v4, v0, v6

    if-gtz v4, :cond_2

    monitor-exit p0

    .line 372
    return-wide v6

    .line 375
    :cond_2
    cmp-long v4, v0, p1

    if-gez v4, :cond_3

    move-wide v2, v0

    .line 376
    .local v2, "skipped":J
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

    .line 377
    return-wide v2

    .line 375
    .end local v2    # "skipped":J
    :cond_3
    move-wide v2, p1

    .restart local v2    # "skipped":J
    goto :goto_0

    .end local v0    # "avail":J
    .end local v2    # "skipped":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
