.class public Ljava/util/zip/ZipInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field private static final DEFLATED:I = 0x8

.field private static final STORED:I


# instance fields
.field private b:[B

.field private closed:Z

.field private crc:Ljava/util/zip/CRC32;

.field private entry:Ljava/util/zip/ZipEntry;

.field private entryEOF:Z

.field private flag:I

.field private remaining:J

.field private tmpbuf:[B

.field private zc:Ljava/util/zip/ZipCoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 80
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x200

    .line 98
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0, v1, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 48
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 50
    new-array v0, v3, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    .line 55
    iput-boolean v4, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    .line 58
    iput-boolean v4, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 279
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->b:[B

    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    if-nez p2, :cond_1

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    invoke-static {p2}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    .line 97
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method private static final get16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 447
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static final get32([BI)J
    .locals 5
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 455
    invoke-static {p0, p1}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static final get64([BI)J
    .locals 5
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 463
    invoke-static {p0, p1}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private readEnd(Ljava/util/zip/ZipEntry;)V
    .locals 13
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x10

    const/16 v11, 0xc

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 373
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    .line 374
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 375
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    sub-int/2addr v5, v0

    invoke-virtual {v1, v4, v5, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 377
    :cond_0
    iget v1, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v10, :cond_2

    .line 379
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    .line 380
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 382
    :cond_1
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v4, 0x18

    invoke-direct {p0, v1, v9, v4}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 383
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v9}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v2

    .line 384
    .local v2, "sig":J
    const-wide/32 v4, 0x8074b50

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 385
    iput-wide v2, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 386
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v8}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 387
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v11}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 388
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    .line 389
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v5, 0x13

    .line 388
    invoke-virtual {v1, v4, v5, v8}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 411
    .end local v2    # "sig":J
    :cond_2
    :goto_0
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_6

    .line 412
    new-instance v1, Ljava/util/zip/ZipException;

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid entry size (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 414
    const-string/jumbo v5, " but got "

    .line 413
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 414
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v6

    .line 413
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 414
    const-string/jumbo v5, " bytes)"

    .line 413
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 391
    .restart local v2    # "sig":J
    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 392
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 393
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v12}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    goto :goto_0

    .line 396
    .end local v2    # "sig":J
    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-direct {p0, v1, v9, v12}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 397
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v9}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v2

    .line 398
    .restart local v2    # "sig":J
    const-wide/32 v4, 0x8074b50

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 399
    iput-wide v2, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 400
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 401
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 402
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    .line 403
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v5, 0xb

    .line 402
    invoke-virtual {v1, v4, v5, v8}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto/16 :goto_0

    .line 405
    :cond_5
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 406
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 407
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v11}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    goto/16 :goto_0

    .line 416
    .end local v2    # "sig":J
    :cond_6
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_7

    .line 417
    new-instance v1, Ljava/util/zip/ZipException;

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid entry compressed size (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 419
    const-string/jumbo v5, " but got "

    .line 418
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 419
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v6

    .line 418
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 419
    const-string/jumbo v5, " bytes)"

    .line 418
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 417
    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 421
    :cond_7
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    .line 422
    new-instance v1, Ljava/util/zip/ZipException;

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid entry CRC (expected 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 424
    const-string/jumbo v5, " but got 0x"

    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 424
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 424
    const-string/jumbo v5, ")"

    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_8
    return-void
.end method

.method private readFully([BII)V
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
    .line 432
    :goto_0
    if-lez p3, :cond_1

    .line 433
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 434
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 435
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 437
    :cond_0
    add-int/2addr p2, v0

    .line 438
    sub-int/2addr p3, v0

    goto :goto_0

    .line 431
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method private readLOC()Ljava/util/zip/ZipEntry;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    :try_start_0
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v8, 0x0

    const/16 v9, 0x1e

    invoke-direct {p0, v7, v8, v9}, Ljava/util/zip/ZipInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v8

    const-wide/32 v10, 0x4034b50

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 291
    const/4 v7, 0x0

    return-object v7

    .line 287
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Ljava/io/EOFException;
    const/4 v7, 0x0

    return-object v7

    .line 294
    .end local v2    # "e":Ljava/io/EOFException;
    :cond_0
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v8, 0x6

    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    move-result v7

    iput v7, p0, Ljava/util/zip/ZipInputStream;->flag:I

    .line 296
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v8, 0x1a

    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    move-result v4

    .line 297
    .local v4, "len":I
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->b:[B

    array-length v1, v7

    .line 298
    .local v1, "blen":I
    if-le v4, v1, :cond_2

    .line 300
    :cond_1
    mul-int/lit8 v1, v1, 0x2

    .line 301
    if-gt v4, v1, :cond_1

    .line 302
    new-array v7, v1, [B

    iput-object v7, p0, Ljava/util/zip/ZipInputStream;->b:[B

    .line 304
    :cond_2
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->b:[B

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v4}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 306
    iget v7, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_3

    .line 307
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v8, p0, Ljava/util/zip/ZipInputStream;->b:[B

    invoke-virtual {v7, v8, v4}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    move-result-object v7

    .line 306
    :goto_0
    invoke-virtual {p0, v7}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 310
    .local v3, "e":Ljava/util/zip/ZipEntry;
    iget v7, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 311
    new-instance v7, Ljava/util/zip/ZipException;

    const-string/jumbo v8, "encrypted ZIP entry not supported"

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 308
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    :cond_3
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v8, p0, Ljava/util/zip/ZipInputStream;->b:[B

    invoke-virtual {v7, v8, v4}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 313
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    :cond_4
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v8, 0x8

    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    move-result v7

    iput v7, v3, Ljava/util/zip/ZipEntry;->method:I

    .line 314
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v8

    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->time:J

    .line 315
    iget v7, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_5

    .line 317
    iget v7, v3, Ljava/util/zip/ZipEntry;->method:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_6

    .line 318
    new-instance v7, Ljava/util/zip/ZipException;

    .line 319
    const-string/jumbo v8, "only DEFLATED entries can have EXT descriptor"

    .line 318
    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 322
    :cond_5
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v8, 0xe

    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v8

    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->crc:J

    .line 323
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v8, 0x12

    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v8

    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->csize:J

    .line 324
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v8, 0x16

    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    move-result-wide v8

    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->size:J

    .line 326
    :cond_6
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v8, 0x1c

    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    move-result v4

    .line 327
    if-lez v4, :cond_a

    .line 328
    new-array v0, v4, [B

    .line 329
    .local v0, "bb":[B
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7, v4}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 330
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 332
    iget-wide v8, v3, Ljava/util/zip/ZipEntry;->csize:J

    const-wide v10, 0xffffffffL

    cmp-long v7, v8, v10

    if-eqz v7, :cond_7

    iget-wide v8, v3, Ljava/util/zip/ZipEntry;->size:J

    const-wide v10, 0xffffffffL

    cmp-long v7, v8, v10

    if-nez v7, :cond_a

    .line 333
    :cond_7
    const/4 v5, 0x0

    .line 334
    .local v5, "off":I
    :goto_1
    add-int/lit8 v7, v5, 0x4

    if-ge v7, v4, :cond_a

    .line 335
    add-int/lit8 v7, v5, 0x2

    invoke-static {v0, v7}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    move-result v6

    .line 336
    .local v6, "sz":I
    invoke-static {v0, v5}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 337
    add-int/lit8 v5, v5, 0x4

    .line 340
    const/16 v7, 0x10

    if-lt v6, v7, :cond_8

    add-int v7, v5, v6

    if-le v7, v4, :cond_9

    .line 345
    :cond_8
    return-object v3

    .line 347
    :cond_9
    invoke-static {v0, v5}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    move-result-wide v8

    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->size:J

    .line 348
    add-int/lit8 v7, v5, 0x8

    invoke-static {v0, v7}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    move-result-wide v8

    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->csize:J

    .line 355
    .end local v0    # "bb":[B
    .end local v5    # "off":I
    .end local v6    # "sz":I
    :cond_a
    return-object v3

    .line 351
    .restart local v0    # "bb":[B
    .restart local v5    # "off":I
    .restart local v6    # "sz":I
    :cond_b
    add-int/lit8 v7, v6, 0x4

    add-int/2addr v5, v7

    goto :goto_1
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 161
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 163
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 274
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    .line 272
    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 142
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 140
    return-void
.end method

.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 366
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 116
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 119
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 120
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 121
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->readLOC()Ljava/util/zip/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_1

    .line 122
    return-object v1

    .line 126
    :cond_1
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 128
    :cond_2
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    .line 130
    :cond_3
    iput-boolean v2, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 131
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    return-object v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 187
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 188
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 188
    :cond_1
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_0

    .line 190
    if-nez p3, :cond_2

    .line 191
    return v1

    .line 194
    :cond_2
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_3

    .line 195
    return v4

    .line 197
    :cond_3
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v0, :sswitch_data_0

    .line 233
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :sswitch_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p3

    .line 200
    if-ne p3, v4, :cond_4

    .line 201
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipInputStream;->readEnd(Ljava/util/zip/ZipEntry;)V

    .line 202
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 203
    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    .line 210
    :goto_0
    return p3

    .line 205
    :cond_4
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 207
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    goto :goto_0

    .line 212
    :sswitch_1
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_5

    .line 213
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 214
    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    .line 215
    return v4

    .line 217
    :cond_5
    int-to-long v0, p3

    iget-wide v2, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 218
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    long-to-int p3, v0

    .line 220
    :cond_6
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    .line 221
    if-ne p3, v4, :cond_7

    .line 222
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "unexpected EOF"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_7
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 225
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    .line 226
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_8

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 227
    new-instance v0, Ljava/util/zip/ZipException;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid entry CRC (expected 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    const-string/jumbo v2, " but got 0x"

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    const-string/jumbo v2, ")"

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_8
    return p3

    .line 197
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    .line 247
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "negative skip length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    :cond_0
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 250
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 251
    .local v1, "max":I
    const/4 v2, 0x0

    .line 252
    .local v2, "total":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 253
    sub-int v0, v1, v2

    .line 254
    .local v0, "len":I
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    array-length v3, v3

    if-le v0, v3, :cond_1

    .line 255
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    array-length v0, v3

    .line 257
    :cond_1
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    .line 258
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 259
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 264
    .end local v0    # "len":I
    :cond_2
    int-to-long v4, v2

    return-wide v4

    .line 262
    .restart local v0    # "len":I
    :cond_3
    add-int/2addr v2, v0

    goto :goto_0
.end method
