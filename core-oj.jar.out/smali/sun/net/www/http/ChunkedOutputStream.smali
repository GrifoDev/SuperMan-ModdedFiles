.class public Lsun/net/www/http/ChunkedOutputStream;
.super Ljava/io/PrintStream;
.source "ChunkedOutputStream.java"


# static fields
.field private static final CRLF:[B

.field private static final CRLF_SIZE:I

.field static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field private static final EMPTY_CHUNK_HEADER:[B

.field private static final EMPTY_CHUNK_HEADER_SIZE:I

.field private static final FOOTER:[B

.field private static final FOOTER_SIZE:I


# instance fields
.field private buf:[B

.field private completeHeader:[B

.field private count:I

.field private out:Ljava/io/PrintStream;

.field private preferedHeaderSize:I

.field private preferredChunkDataSize:I

.field private preferredChunkGrossSize:I

.field private size:I

.field private spaceInCurrentChunk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lsun/net/www/http/ChunkedOutputStream;->CRLF:[B

    sget-object v0, Lsun/net/www/http/ChunkedOutputStream;->CRLF:[B

    array-length v0, v0

    sput v0, Lsun/net/www/http/ChunkedOutputStream;->CRLF_SIZE:I

    sget-object v0, Lsun/net/www/http/ChunkedOutputStream;->CRLF:[B

    sput-object v0, Lsun/net/www/http/ChunkedOutputStream;->FOOTER:[B

    sget v0, Lsun/net/www/http/ChunkedOutputStream;->CRLF_SIZE:I

    sput v0, Lsun/net/www/http/ChunkedOutputStream;->FOOTER_SIZE:I

    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeader(I)[B

    move-result-object v0

    sput-object v0, Lsun/net/www/http/ChunkedOutputStream;->EMPTY_CHUNK_HEADER:[B

    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    move-result v0

    sput v0, Lsun/net/www/http/ChunkedOutputStream;->EMPTY_CHUNK_HEADER_SIZE:I

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lsun/net/www/http/ChunkedOutputStream;-><init>(Ljava/io/PrintStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;I)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    if-gtz p2, :cond_0

    const/16 p2, 0x1000

    :cond_0
    if-lez p2, :cond_2

    invoke-static {p2}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    move-result v1

    sub-int v1, p2, v1

    sget v2, Lsun/net/www/http/ChunkedOutputStream;->FOOTER_SIZE:I

    sub-int v0, v1, v2

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    move-result v1

    invoke-static {p2}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move p2, v0

    :cond_2
    if-lez p2, :cond_3

    iput p2, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    :goto_0
    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    move-result v1

    iput v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferedHeaderSize:I

    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferedHeaderSize:I

    iget v2, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    add-int/2addr v1, v2

    sget v2, Lsun/net/www/http/ChunkedOutputStream;->FOOTER_SIZE:I

    add-int/2addr v1, v2

    iput v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkGrossSize:I

    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeader(I)[B

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->completeHeader:[B

    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    add-int/lit8 v1, v1, 0x20

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    invoke-virtual {p0}, Lsun/net/www/http/ChunkedOutputStream;->reset()V

    return-void

    :cond_3
    const/16 v1, 0x1000

    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    move-result v1

    rsub-int v1, v1, 0x1000

    sget v2, Lsun/net/www/http/ChunkedOutputStream;->FOOTER_SIZE:I

    sub-int/2addr v1, v2

    iput v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    goto :goto_0
.end method

.method private ensureOpen()V
    .locals 1

    iget-object v0, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V

    :cond_0
    return-void
.end method

.method private flush(Z)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkGrossSize:I

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/PrintStream;->write([BII)V

    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {p0}, Lsun/net/www/http/ChunkedOutputStream;->reset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    if-lez v1, :cond_2

    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferedHeaderSize:I

    iget v2, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    invoke-static {v2}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    move-result v2

    sub-int v0, v1, v2

    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeader(I)[B

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    invoke-static {v3}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    move-result v3

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    iget v2, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    sget-object v3, Lsun/net/www/http/ChunkedOutputStream;->FOOTER:[B

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    iget v2, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    sget-object v3, Lsun/net/www/http/ChunkedOutputStream;->FOOTER:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/PrintStream;->write([BII)V

    :goto_1
    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    invoke-virtual {p0}, Lsun/net/www/http/ChunkedOutputStream;->reset()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    sget-object v2, Lsun/net/www/http/ChunkedOutputStream;->EMPTY_CHUNK_HEADER:[B

    sget v3, Lsun/net/www/http/ChunkedOutputStream;->EMPTY_CHUNK_HEADER_SIZE:I

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/PrintStream;->write([BII)V

    goto :goto_1
.end method

.method private static getHeader(I)[B
    .locals 8

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "US-ASCII"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p0}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    move-result v5

    new-array v1, v5, [B

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    aget-byte v5, v2, v4

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v5, v2

    sget-object v6, Lsun/net/www/http/ChunkedOutputStream;->CRLF:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lsun/net/www/http/ChunkedOutputStream;->CRLF:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static getHeaderSize(I)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lsun/net/www/http/ChunkedOutputStream;->CRLF_SIZE:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public checkError()Z
    .locals 1

    iget-object v0, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedOutputStream;->ensureOpen()V

    iget v0, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedOutputStream;->flush(Z)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedOutputStream;->flush(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedOutputStream;->ensureOpen()V

    iget v0, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedOutputStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lsun/net/www/http/ChunkedOutputStream;->preferedHeaderSize:I

    iput v0, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    iget v0, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    iput v0, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    return v0
.end method

.method public declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    new-array v0, v1, [B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lsun/net/www/http/ChunkedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized write([BII)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedOutputStream;->ensureOpen()V

    if-ltz p2, :cond_0

    array-length v3, p1

    if-le p2, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    if-ltz p3, :cond_0

    add-int v3, p2, p3

    :try_start_1
    array-length v4, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v3, v4, :cond_0

    add-int v3, p2, p3

    if-ltz v3, :cond_0

    if-nez p3, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    move v0, p3

    move v2, p2

    :goto_0
    :try_start_2
    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    if-lt v0, v3, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->completeHeader:[B

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    iget-object v4, p0, Lsun/net/www/http/ChunkedOutputStream;->completeHeader:[B

    aget-byte v4, v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    iget v4, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    iget v5, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    add-int/2addr v2, v3

    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    sub-int/2addr v0, v3

    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    iget v4, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    add-int/2addr v3, v4

    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    iget v4, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    sget-object v5, Lsun/net/www/http/ChunkedOutputStream;->FOOTER:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    iget v4, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    sget-object v5, Lsun/net/www/http/ChunkedOutputStream;->FOOTER:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    const/4 v3, 0x0

    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lsun/net/www/http/ChunkedOutputStream;->flush(Z)V

    invoke-virtual {p0}, Lsun/net/www/http/ChunkedOutputStream;->checkError()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    iget v4, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    invoke-static {p1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    add-int/2addr v3, v0

    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    add-int/2addr v3, v0

    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    sub-int/2addr v3, v0

    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :cond_6
    if-lez v0, :cond_4

    goto :goto_0
.end method
