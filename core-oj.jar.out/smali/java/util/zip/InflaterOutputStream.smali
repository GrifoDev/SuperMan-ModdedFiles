.class public Ljava/util/zip/InflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "InflaterOutputStream.java"


# instance fields
.field protected final buf:[B

.field private closed:Z

.field protected final inf:Ljava/util/zip/Inflater;

.field private usesDefaultInflater:Z

.field private final wbuf:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 77
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "infl"    # Ljava/util/zip/Inflater;

    .prologue
    .line 90
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "infl"    # Ljava/util/zip/Inflater;
    .param p3, "bufLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/InflaterOutputStream;->wbuf:[B

    .line 55
    iput-boolean v1, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    .line 58
    iput-boolean v1, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null output"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    if-nez p2, :cond_1

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null inflater"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    if-gtz p3, :cond_2

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    iput-object p2, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    .line 116
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    .line 103
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
    .line 64
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 126
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 132
    iput-boolean v2, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    .line 125
    :cond_0
    return-void

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 132
    iput-boolean v2, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    .line 130
    throw v0
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    .line 186
    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->flush()V

    .line 187
    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 182
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    .line 148
    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_1

    .line 150
    :goto_0
    :try_start_0
    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 144
    :cond_1
    return-void

    .line 154
    :cond_2
    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    iget-object v5, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .line 155
    .local v2, "n":I
    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 160
    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v2    # "n":I
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/util/zip/DataFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 167
    const-string/jumbo v1, "Invalid ZLIB data format"

    .line 169
    :cond_3
    new-instance v3, Ljava/util/zip/ZipException;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->wbuf:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 204
    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->wbuf:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/zip/InflaterOutputStream;->write([BII)V

    .line 201
    return-void
.end method

.method public write([BII)V
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
    .line 223
    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    .line 224
    if-nez p1, :cond_0

    .line 225
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "Null buffer for read"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 226
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 227
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 226
    :cond_2
    array-length v4, p1

    sub-int/2addr v4, p2

    if-gt p3, v4, :cond_1

    .line 228
    if-nez p3, :cond_3

    .line 229
    return-void

    .line 238
    :cond_3
    :try_start_0
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 241
    const/4 v4, 0x1

    if-ge p3, v4, :cond_5

    .line 221
    :cond_4
    return-void

    .line 245
    :cond_5
    const/16 v4, 0x200

    if-ge p3, v4, :cond_9

    move v3, p3

    .line 246
    .local v3, "part":I
    :goto_0
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 247
    add-int/2addr p2, v3

    .line 248
    sub-int/2addr p3, v3

    .line 253
    .end local v3    # "part":I
    :cond_6
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v5, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    iget-object v6, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .line 254
    .local v2, "n":I
    if-lez v2, :cond_7

    .line 255
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 257
    :cond_7
    if-gtz v2, :cond_6

    .line 260
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_4

    .line 263
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 264
    new-instance v4, Ljava/util/zip/ZipException;

    const-string/jumbo v5, "ZLIB dictionary missing"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v2    # "n":I
    :catch_0
    move-exception v0

    .line 269
    .local v0, "ex":Ljava/util/zip/DataFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "msg":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 271
    const-string/jumbo v1, "Invalid ZLIB data format"

    .line 273
    :cond_8
    new-instance v4, Ljava/util/zip/ZipException;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 245
    .end local v0    # "ex":Ljava/util/zip/DataFormatException;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_9
    const/16 v3, 0x200

    .restart local v3    # "part":I
    goto :goto_0
.end method
