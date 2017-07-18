.class public Lsun/net/www/http/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"

# interfaces
.implements Lsun/net/www/http/Hurryable;


# static fields
.field private static final MAX_CHUNK_HEADER_SIZE:I = 0x802

.field static final STATE_AWAITING_CHUNK_EOL:I = 0x3

.field static final STATE_AWAITING_CHUNK_HEADER:I = 0x1

.field static final STATE_AWAITING_TRAILERS:I = 0x4

.field static final STATE_DONE:I = 0x5

.field static final STATE_READING_CHUNK:I = 0x2


# instance fields
.field private chunkCount:I

.field private chunkData:[B

.field private chunkPos:I

.field private chunkRead:I

.field private chunkSize:I

.field private closed:Z

.field private error:Z

.field private hc:Lsun/net/www/http/HttpClient;

.field private in:Ljava/io/InputStream;

.field private rawCount:I

.field private rawData:[B

.field private rawPos:I

.field private responses:Lsun/net/www/MessageHeader;

.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lsun/net/www/http/HttpClient;Lsun/net/www/MessageHeader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iput-object p1, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    iput-object p3, p0, Lsun/net/www/http/ChunkedInputStream;->responses:Lsun/net/www/MessageHeader;

    iput-object p2, p0, Lsun/net/www/http/ChunkedInputStream;->hc:Lsun/net/www/http/HttpClient;

    const/4 v0, 0x1

    iput v0, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    return-void
.end method

.method private closeUnderlying()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    if-nez v0, :cond_2

    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->hc:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->finished()V

    :cond_1
    :goto_0
    iput-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    return-void

    :cond_2
    invoke-virtual {p0}, Lsun/net/www/http/ChunkedInputStream;->hurry()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->hc:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    goto :goto_0
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private ensureRawAvailable(I)V
    .locals 6

    const/4 v5, 0x0

    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    sub-int v1, v2, v3

    add-int v2, v1, p1

    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    array-length v3, v3

    if-le v2, v3, :cond_3

    add-int v2, v1, p1

    new-array v0, v2, [B

    if-lez v1, :cond_0

    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    invoke-static {v2, v3, v0, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_0
    iput-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    :cond_1
    :goto_0
    iput v1, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    iput v5, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    :cond_2
    return-void

    :cond_3
    if-lez v1, :cond_1

    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    iget-object v4, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method private fastRead([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    iget v5, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    sub-int v3, v4, v5

    if-ge v3, p3, :cond_1

    move v0, v3

    :goto_0
    if-lez v0, :cond_3

    :try_start_0
    iget-object v4, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_2

    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    add-int/2addr v4, v2

    iput v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    iget v5, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    if-lt v4, v5, :cond_0

    const/4 v4, 0x3

    iput v4, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    :cond_0
    return v2

    :cond_1
    move v0, p3

    goto :goto_0

    :catch_0
    move-exception v1

    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    throw v1

    :cond_2
    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Premature EOF"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    return v6
.end method

.method private processRaw()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_15

    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v6, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    :cond_0
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-ge v6, v10, :cond_1

    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    aget-byte v10, v10, v6

    const/16 v11, 0xa

    if-ne v10, v11, :cond_2

    :cond_1
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-lt v6, v10, :cond_3

    return-void

    :cond_2
    add-int/lit8 v6, v6, 0x1

    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    sub-int v10, v6, v10

    const/16 v11, 0x802

    if-lt v10, v11, :cond_0

    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Chunk header too long"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    new-instance v3, Ljava/lang/String;

    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    iget v12, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    sub-int v12, v6, v12

    add-int/lit8 v12, v12, 0x1

    const-string/jumbo v13, "US-ASCII"

    invoke-direct {v3, v10, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v4, v10, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    :cond_4
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    const/4 v10, 0x0

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    if-lez v10, :cond_6

    const/4 v10, 0x2

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Bogus chunk size"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_6
    const/4 v10, 0x4

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    goto/16 :goto_0

    :pswitch_1
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-lt v10, v11, :cond_7

    return-void

    :cond_7
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    sub-int/2addr v10, v11

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    iget v12, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    array-length v10, v10

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    add-int/2addr v11, v1

    if-ge v10, v11, :cond_8

    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    sub-int v0, v10, v11

    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    array-length v10, v10

    add-int v11, v0, v1

    if-ge v10, v11, :cond_9

    add-int v10, v0, v1

    new-array v7, v10, [B

    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v7, v12, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v7, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    :goto_2
    const/4 v10, 0x0

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    iput v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    :cond_8
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    iget-object v12, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    iget v13, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    invoke-static {v10, v11, v12, v13, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    add-int/2addr v10, v1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    add-int/2addr v10, v1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    add-int/2addr v10, v1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    sub-int/2addr v10, v11

    if-gtz v10, :cond_a

    const/4 v10, 0x3

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    goto/16 :goto_0

    :cond_9
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    iget-object v12, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_2

    :cond_a
    return-void

    :pswitch_2
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-lt v10, v11, :cond_b

    return-void

    :cond_b
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    aget-byte v10, v10, v11

    const/16 v11, 0xd

    if-eq v10, v11, :cond_c

    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "missing CR"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_c
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    add-int/lit8 v11, v11, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xa

    if-eq v10, v11, :cond_d

    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "missing LF"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_d
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    add-int/lit8 v10, v10, 0x2

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    const/4 v10, 0x1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    goto/16 :goto_0

    :pswitch_3
    iget v6, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    :goto_3
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-ge v6, v10, :cond_e

    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    aget-byte v10, v10, v6

    const/16 v11, 0xa

    if-ne v10, v11, :cond_f

    :cond_e
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-lt v6, v10, :cond_10

    return-void

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_10
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    if-ne v6, v10, :cond_11

    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "LF should be proceeded by CR"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_11
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    add-int/lit8 v11, v6, -0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xd

    if-eq v10, v11, :cond_12

    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "LF should be proceeded by CR"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_12
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    add-int/lit8 v10, v10, 0x1

    if-ne v6, v10, :cond_13

    const/4 v10, 0x5

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->closeUnderlying()V

    return-void

    :cond_13
    new-instance v8, Ljava/lang/String;

    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    iget v12, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    sub-int v12, v6, v12

    const-string/jumbo v13, "US-ASCII"

    invoke-direct {v8, v10, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_14

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Malformed tailer - format should be key:value"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_14
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v10, v5, v9}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    goto/16 :goto_0

    :cond_15
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readAhead(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    iget v1, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    if-lt v0, v1, :cond_1

    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->readAheadBlocking()I

    move-result v0

    return v0

    :cond_2
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->readAheadNonBlocking()I

    move-result v0

    return v0
.end method

.method private readAheadBlocking()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    :cond_0
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    return v2

    :cond_1
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lsun/net/www/http/ChunkedInputStream;->ensureRawAvailable(I)V

    :try_start_0
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    iget-object v5, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    array-length v5, v5

    iget v6, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gez v1, :cond_2

    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Premature EOF"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    throw v0

    :cond_2
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->processRaw()V

    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    if-lez v2, :cond_0

    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    sub-int/2addr v2, v3

    return v2
.end method

.method private readAheadNonBlocking()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedInputStream;->ensureRawAvailable(I)V

    :try_start_0
    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v5, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    invoke-virtual {v3, v4, v5, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_0

    iput-boolean v6, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    const/4 v3, -0x1

    return v3

    :catch_0
    move-exception v1

    iput-boolean v6, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    throw v1

    :cond_0
    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->processRaw()V

    :cond_1
    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    sub-int/2addr v3, v4

    return v3
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->ensureOpen()V

    iget v1, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v0, v1, v2

    if-lez v0, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-gez v0, :cond_1

    monitor-exit p0

    return v3

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->closeUnderlying()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hurry()Z
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v2}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v2, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    monitor-exit p0

    return v1

    :cond_2
    :try_start_3
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->state:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
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
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->ensureOpen()V

    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    iget v1, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    iget v1, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->ensureOpen()V

    if-ltz p2, :cond_0

    array-length v2, p1

    if-le p2, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    if-ltz p3, :cond_0

    add-int v2, p2, p3

    :try_start_1
    array-length v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-ltz v2, :cond_0

    if-nez p3, :cond_2

    monitor-exit p0

    return v4

    :cond_2
    :try_start_2
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    sub-int v0, v2, v3

    if-gtz v0, :cond_4

    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/http/ChunkedInputStream;->fastRead([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    :cond_3
    const/4 v2, 0x1

    :try_start_3
    invoke-direct {p0, v2}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-gez v0, :cond_4

    const/4 v2, -0x1

    monitor-exit p0

    return v2

    :cond_4
    if-ge v0, p3, :cond_5

    move v1, v0

    :goto_0
    :try_start_4
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :cond_5
    move v1, p3

    goto :goto_0
.end method
