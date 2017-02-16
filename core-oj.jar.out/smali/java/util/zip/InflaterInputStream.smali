.class public Ljava/util/zip/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# instance fields
.field private b:[B

.field protected buf:[B

.field protected closed:Z

.field protected inf:Ljava/util/zip/Inflater;

.field protected len:I

.field private reachEOF:Z

.field private singleByteBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 109
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;

    .prologue
    .line 101
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;
    .param p3, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    .line 63
    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 112
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    .line 193
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    .line 85
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_1
    if-gtz p3, :cond_2

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    iput-object p2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    .line 91
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    .line 83
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
    .line 69
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 186
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
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
    .line 230
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 232
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    .line 229
    :cond_0
    return-void
.end method

.method protected fill()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 242
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 243
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    .line 244
    iget v0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 245
    new-instance v0, Ljava/io/EOFException;

    const-string/jumbo v1, "Unexpected end of ZLIB input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget v2, p0, Ljava/util/zip/InflaterInputStream;->len:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 241
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    .prologue
    monitor-enter p0

    monitor-exit p0

    .line 275
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 262
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

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 121
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 122
    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
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

    .line 142
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 145
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 146
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 145
    :cond_2
    array-length v3, p1

    sub-int/2addr v3, p2

    if-gt p3, v3, :cond_1

    .line 147
    if-nez p3, :cond_4

    .line 148
    return v4

    .line 157
    .local v1, "n":I
    :cond_3
    :try_start_0
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 158
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    .line 152
    .end local v1    # "n":I
    :cond_4
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    .restart local v1    # "n":I
    if-nez v1, :cond_6

    .line 153
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 155
    const/4 v3, -0x1

    return v3

    .line 163
    :cond_6
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 164
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_7
    return v1

    .line 168
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/util/zip/DataFormatException;
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Ljava/util/zip/ZipException;

    if-eqz v2, :cond_8

    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    invoke-direct {v3, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .restart local v2    # "s":Ljava/lang/String;
    :cond_8
    const-string/jumbo v2, "Invalid ZLIB data format"

    goto :goto_0
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

    .line 291
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 203
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    .line 204
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "negative skip length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_0
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 207
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 208
    .local v1, "max":I
    const/4 v2, 0x0

    .line 209
    .local v2, "total":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 210
    sub-int v0, v1, v2

    .line 211
    .local v0, "len":I
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    array-length v3, v3

    if-le v0, v3, :cond_1

    .line 212
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    array-length v0, v3

    .line 214
    :cond_1
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v0}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    .line 215
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 216
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 221
    .end local v0    # "len":I
    :cond_2
    int-to-long v4, v2

    return-wide v4

    .line 219
    .restart local v0    # "len":I
    :cond_3
    add-int/2addr v2, v0

    goto :goto_0
.end method
