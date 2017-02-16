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
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "hc"    # Lsun/net/www/http/HttpClient;
    .param p3, "responses"    # Lsun/net/www/MessageHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 81
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    .line 101
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    .line 627
    iput-object p1, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    .line 628
    iput-object p3, p0, Lsun/net/www/http/ChunkedInputStream;->responses:Lsun/net/www/MessageHeader;

    .line 629
    iput-object p2, p0, Lsun/net/www/http/ChunkedInputStream;->hc:Lsun/net/www/http/HttpClient;

    .line 635
    const/4 v0, 0x1

    iput v0, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    .line 624
    return-void
.end method

.method private closeUnderlying()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 215
    return-void

    .line 218
    :cond_0
    iget-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    if-nez v0, :cond_2

    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 219
    iget-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->hc:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->finished()V

    .line 226
    :cond_1
    :goto_0
    iput-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    .line 213
    return-void

    .line 221
    :cond_2
    invoke-virtual {p0}, Lsun/net/www/http/ChunkedInputStream;->hurry()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
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

    .prologue
    .line 173
    iget-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    return-void
.end method

.method private ensureRawAvailable(I)V
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v5, 0x0

    .line 186
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    array-length v3, v3

    if-le v2, v3, :cond_2

    .line 187
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    sub-int v1, v2, v3

    .line 188
    .local v1, "used":I
    add-int v2, v1, p1

    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    array-length v3, v3

    if-le v2, v3, :cond_3

    .line 189
    add-int v2, v1, p1

    new-array v0, v2, [B

    .line 190
    .local v0, "tmp":[B
    if-lez v1, :cond_0

    .line 191
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    invoke-static {v2, v3, v0, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 193
    :cond_0
    iput-object v0, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    .line 199
    .end local v0    # "tmp":[B
    :cond_1
    :goto_0
    iput v1, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    .line 200
    iput v5, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    .line 185
    .end local v1    # "used":I
    :cond_2
    return-void

    .line 195
    .restart local v1    # "used":I
    :cond_3
    if-lez v1, :cond_1

    .line 196
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    iget-object v4, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method private fastRead([BII)I
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 239
    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    iget v5, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    sub-int v3, v4, v5

    .line 240
    .local v3, "remaining":I
    if-ge v3, p3, :cond_1

    move v0, v3

    .line 241
    .local v0, "cnt":I
    :goto_0
    if-lez v0, :cond_3

    .line 244
    :try_start_0
    iget-object v4, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 249
    .local v2, "nread":I
    if-lez v2, :cond_2

    .line 250
    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    add-int/2addr v4, v2

    iput v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    .line 251
    iget v4, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    iget v5, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    if-lt v4, v5, :cond_0

    .line 252
    const/4 v4, 0x3

    iput v4, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    .line 254
    :cond_0
    return v2

    .end local v0    # "cnt":I
    .end local v2    # "nread":I
    :cond_1
    move v0, p3

    .line 240
    goto :goto_0

    .line 245
    .restart local v0    # "cnt":I
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Ljava/io/IOException;
    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 247
    throw v1

    .line 256
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "nread":I
    :cond_2
    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 257
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Premature EOF"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    .end local v2    # "nread":I
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

    .prologue
    .line 280
    :goto_0
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_15

    .line 282
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 292
    :pswitch_0
    iget v6, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    .line 293
    .local v6, "pos":I
    :cond_0
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-ge v6, v10, :cond_1

    .line 294
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    aget-byte v10, v10, v6

    const/16 v11, 0xa

    if-ne v10, v11, :cond_2

    .line 303
    :cond_1
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-lt v6, v10, :cond_3

    .line 304
    return-void

    .line 297
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 298
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    sub-int v10, v6, v10

    const/16 v11, 0x802

    if-lt v10, v11, :cond_0

    .line 299
    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 300
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Chunk header too long"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 310
    :cond_3
    new-instance v3, Ljava/lang/String;

    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    iget v12, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    sub-int v12, v6, v12

    add-int/lit8 v12, v12, 0x1

    const-string/jumbo v13, "US-ASCII"

    invoke-direct {v3, v10, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 311
    .local v3, "header":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    .line 316
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

    .line 326
    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    .line 327
    const/4 v10, 0x0

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    .line 332
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    if-lez v10, :cond_6

    .line 333
    const/4 v10, 0x2

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    goto :goto_0

    .line 311
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 319
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Bogus chunk size"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 335
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    const/4 v10, 0x4

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    goto/16 :goto_0

    .line 347
    .end local v3    # "header":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "pos":I
    :pswitch_1
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-lt v10, v11, :cond_7

    .line 348
    return-void

    .line 355
    :cond_7
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    sub-int/2addr v10, v11

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    iget v12, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 360
    .local v1, "copyLen":I
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    array-length v10, v10

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    add-int/2addr v11, v1

    if-ge v10, v11, :cond_8

    .line 361
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    sub-int v0, v10, v11

    .line 362
    .local v0, "cnt":I
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    array-length v10, v10

    add-int v11, v0, v1

    if-ge v10, v11, :cond_9

    .line 363
    add-int v10, v0, v1

    new-array v7, v10, [B

    .line 364
    .local v7, "tmp":[B
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v7, v12, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 365
    iput-object v7, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    .line 369
    .end local v7    # "tmp":[B
    :goto_2
    const/4 v10, 0x0

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    .line 370
    iput v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    .line 377
    .end local v0    # "cnt":I
    :cond_8
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    iget-object v12, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    iget v13, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    invoke-static {v10, v11, v12, v13, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 378
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    add-int/2addr v10, v1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    .line 379
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    add-int/2addr v10, v1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    .line 380
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    add-int/2addr v10, v1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    .line 386
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkSize:I

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkRead:I

    sub-int/2addr v10, v11

    if-gtz v10, :cond_a

    .line 387
    const/4 v10, 0x3

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    goto/16 :goto_0

    .line 367
    .restart local v0    # "cnt":I
    :cond_9
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    iget-object v12, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_2

    .line 389
    .end local v0    # "cnt":I
    :cond_a
    return-void

    .line 399
    .end local v1    # "copyLen":I
    :pswitch_2
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-lt v10, v11, :cond_b

    .line 400
    return-void

    .line 403
    :cond_b
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    aget-byte v10, v10, v11

    const/16 v11, 0xd

    if-eq v10, v11, :cond_c

    .line 404
    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 405
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "missing CR"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 407
    :cond_c
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    add-int/lit8 v11, v11, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xa

    if-eq v10, v11, :cond_d

    .line 408
    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 409
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "missing LF"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 411
    :cond_d
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    add-int/lit8 v10, v10, 0x2

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    .line 416
    const/4 v10, 0x1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    goto/16 :goto_0

    .line 429
    :pswitch_3
    iget v6, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    .line 430
    .restart local v6    # "pos":I
    :goto_3
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-ge v6, v10, :cond_e

    .line 431
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    aget-byte v10, v10, v6

    const/16 v11, 0xa

    if-ne v10, v11, :cond_f

    .line 436
    :cond_e
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    if-lt v6, v10, :cond_10

    .line 437
    return-void

    .line 434
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 440
    :cond_10
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    if-ne v6, v10, :cond_11

    .line 441
    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 442
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "LF should be proceeded by CR"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 444
    :cond_11
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    add-int/lit8 v11, v6, -0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xd

    if-eq v10, v11, :cond_12

    .line 445
    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 446
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "LF should be proceeded by CR"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 452
    :cond_12
    iget v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    add-int/lit8 v10, v10, 0x1

    if-ne v6, v10, :cond_13

    .line 454
    const/4 v10, 0x5

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    .line 455
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->closeUnderlying()V

    .line 457
    return-void

    .line 464
    :cond_13
    new-instance v8, Ljava/lang/String;

    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v11, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    iget v12, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    sub-int v12, v6, v12

    const-string/jumbo v13, "US-ASCII"

    invoke-direct {v8, v10, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 465
    .local v8, "trailer":Ljava/lang/String;
    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 466
    .restart local v4    # "i":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_14

    .line 467
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Malformed tailer - format should be key:value"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 469
    :cond_14
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 472
    .local v9, "value":Ljava/lang/String;
    iget-object v10, p0, Lsun/net/www/http/ChunkedInputStream;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v10, v5, v9}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    add-int/lit8 v10, v6, 0x1

    iput v10, p0, Lsun/net/www/http/ChunkedInputStream;->rawPos:I

    goto/16 :goto_0

    .line 276
    .end local v4    # "i":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "pos":I
    .end local v8    # "trailer":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_15
    return-void

    .line 282
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
    .param p1, "allowBlocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 593
    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 594
    const/4 v0, -0x1

    return v0

    .line 600
    :cond_0
    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    iget v1, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    if-lt v0, v1, :cond_1

    .line 601
    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    .line 602
    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    .line 608
    :cond_1
    if-eqz p1, :cond_2

    .line 609
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->readAheadBlocking()I

    move-result v0

    return v0

    .line 611
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

    .prologue
    const/4 v7, 0x1

    .line 540
    :cond_0
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 541
    const/4 v2, -0x1

    return v2

    .line 549
    :cond_1
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lsun/net/www/http/ChunkedInputStream;->ensureRawAvailable(I)V

    .line 552
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

    .line 563
    .local v1, "nread":I
    if-gez v1, :cond_2

    .line 564
    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 565
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Premature EOF"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 553
    .end local v1    # "nread":I
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/io/IOException;
    iput-boolean v7, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 555
    throw v0

    .line 571
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "nread":I
    :cond_2
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    .line 572
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->processRaw()V

    .line 574
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    if-lez v2, :cond_0

    .line 579
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

    .prologue
    const/4 v6, 0x1

    .line 498
    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 499
    .local v0, "avail":I
    if-lez v0, :cond_1

    .line 502
    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedInputStream;->ensureRawAvailable(I)V

    .line 506
    :try_start_0
    iget-object v3, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lsun/net/www/http/ChunkedInputStream;->rawData:[B

    iget v5, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    invoke-virtual {v3, v4, v5, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 511
    .local v2, "nread":I
    if-gez v2, :cond_0

    .line 512
    iput-boolean v6, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 513
    const/4 v3, -0x1

    return v3

    .line 507
    .end local v2    # "nread":I
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Ljava/io/IOException;
    iput-boolean v6, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z

    .line 509
    throw v1

    .line 515
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "nread":I
    :cond_0
    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lsun/net/www/http/ChunkedInputStream;->rawCount:I

    .line 520
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->processRaw()V

    .line 526
    .end local v2    # "nread":I
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

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 718
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->ensureOpen()V

    .line 720
    iget v1, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v0, v1, v2

    .line 721
    .local v0, "avail":I
    if-lez v0, :cond_0

    monitor-exit p0

    .line 722
    return v0

    .line 725
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 727
    if-gez v0, :cond_1

    monitor-exit p0

    .line 728
    return v3

    :cond_1
    monitor-exit p0

    .line 730
    return v0

    .end local v0    # "avail":I
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

    .prologue
    monitor-enter p0

    .line 746
    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 747
    return-void

    .line 749
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->closeUnderlying()V

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/http/ChunkedInputStream;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 745
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hurry()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    .line 763
    :try_start_0
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    monitor-exit p0

    .line 764
    return v1

    .line 768
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v2}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    :try_start_2
    iget-boolean v2, p0, Lsun/net/www/http/ChunkedInputStream;->error:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit p0

    .line 774
    return v1

    .line 769
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    monitor-exit p0

    .line 770
    return v1

    .line 777
    .end local v0    # "e":Ljava/lang/Exception;
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

    .prologue
    monitor-enter p0

    .line 649
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->ensureOpen()V

    .line 650
    iget v0, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    iget v1, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    if-lt v0, v1, :cond_0

    .line 651
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    .line 652
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 655
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
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 673
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedInputStream;->ensureOpen()V

    .line 674
    if-ltz p2, :cond_0

    array-length v2, p1

    if-le p2, v2, :cond_1

    .line 676
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

    .line 674
    :cond_1
    if-ltz p3, :cond_0

    .line 675
    add-int v2, p2, p3

    :try_start_1
    array-length v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-ltz v2, :cond_0

    .line 677
    if-nez p3, :cond_2

    monitor-exit p0

    .line 678
    return v4

    .line 681
    :cond_2
    :try_start_2
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkCount:I

    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    sub-int v0, v2, v3

    .line 682
    .local v0, "avail":I
    if-gtz v0, :cond_4

    .line 688
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 689
    invoke-direct {p0, p1, p2, p3}, Lsun/net/www/http/ChunkedInputStream;->fastRead([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 696
    :cond_3
    const/4 v2, 0x1

    :try_start_3
    invoke-direct {p0, v2}, Lsun/net/www/http/ChunkedInputStream;->readAhead(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 697
    if-gez v0, :cond_4

    .line 698
    const/4 v2, -0x1

    monitor-exit p0

    return v2

    .line 701
    :cond_4
    if-ge v0, p3, :cond_5

    move v1, v0

    .line 702
    .local v1, "cnt":I
    :goto_0
    :try_start_4
    iget-object v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkData:[B

    iget v3, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 703
    iget v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lsun/net/www/http/ChunkedInputStream;->chunkPos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 705
    return v1

    .line 701
    .end local v1    # "cnt":I
    :cond_5
    move v1, p3

    .restart local v1    # "cnt":I
    goto :goto_0
.end method
