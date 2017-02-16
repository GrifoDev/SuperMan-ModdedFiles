.class Ljava/io/ObjectOutputStream$BlockDataOutputStream;
.super Ljava/io/OutputStream;
.source "ObjectOutputStream.java"

# interfaces
.implements Ljava/io/DataOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockDataOutputStream"
.end annotation


# static fields
.field private static final CHAR_BUF_SIZE:I = 0x100

.field private static final MAX_BLOCK_SIZE:I = 0x400

.field private static final MAX_HEADER_SIZE:I = 0x5


# instance fields
.field private blkmode:Z

.field private final buf:[B

.field private final cbuf:[C

.field private final dout:Ljava/io/DataOutputStream;

.field private final hbuf:[B

.field private final out:Ljava/io/OutputStream;

.field private pos:I

.field private warnOnceWhenWriting:Z


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x0

    .line 1817
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 1786
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    .line 1788
    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    .line 1790
    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    .line 1793
    iput-boolean v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    .line 1795
    iput v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1818
    iput-object p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    .line 1819
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    .line 1817
    return-void
.end method

.method private warnIfClosed()V
    .locals 3

    .prologue
    .line 1855
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    if-eqz v0, :cond_0

    .line 1856
    const-string/jumbo v0, "The app is relying on undefined behavior. Attempting to write to a closed ObjectOutputStream could produce corrupt output in a future release of Android."

    .line 1858
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream Closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1856
    invoke-static {v0, v1}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1861
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    .line 1854
    :cond_0
    return-void
.end method

.method private writeBlockHeader(I)V
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1957
    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 1958
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    .line 1959
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 1960
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1966
    :goto_0
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1956
    return-void

    .line 1962
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/16 v1, 0x7a

    aput-byte v1, v0, v3

    .line 1963
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    invoke-static {v0, v2, p1}, Ljava/io/Bits;->putInt([BII)V

    .line 1964
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private writeUTFBody(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x7f

    const/4 v8, 0x0

    .line 2273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2274
    .local v3, "len":I
    const/4 v4, 0x0

    .local v4, "off":I
    :goto_0
    if-ge v4, v3, :cond_6

    .line 2275
    sub-int v5, v3, v4

    const/16 v6, 0x100

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2276
    .local v2, "csize":I
    add-int v5, v4, v2

    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    invoke-virtual {p1, v4, v5, v6, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 2277
    const/4 v1, 0x0

    .local v1, "cpos":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 2278
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    aget-char v0, v5, v1

    .line 2279
    .local v0, "c":C
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2272
    const/16 v6, 0x3fd

    .line 2279
    if-gt v5, v6, :cond_2

    .line 2280
    if-gt v0, v9, :cond_0

    if-eqz v0, :cond_0

    .line 2281
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v7, v0

    aput-byte v7, v5, v6

    .line 2277
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2282
    :cond_0
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_1

    .line 2283
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x2

    shr-int/lit8 v7, v0, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 2284
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 2285
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x0

    shr-int/lit8 v7, v0, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 2286
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_2

    .line 2288
    :cond_1
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v7, v0, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 2289
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x0

    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 2290
    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_2

    .line 2293
    :cond_2
    if-gt v0, v9, :cond_3

    if-eqz v0, :cond_3

    .line 2294
    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto :goto_2

    .line 2295
    :cond_3
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_4

    .line 2296
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2297
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2298
    shr-int/lit8 v5, v0, 0x0

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto/16 :goto_2

    .line 2300
    :cond_4
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    .line 2301
    shr-int/lit8 v5, v0, 0x0

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto/16 :goto_2

    .line 2305
    .end local v0    # "c":C
    :cond_5
    add-int/2addr v4, v2

    goto/16 :goto_0

    .line 2271
    .end local v1    # "cpos":I
    .end local v2    # "csize":I
    :cond_6
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

    .prologue
    .line 1893
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->flush()V

    .line 1894
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1895
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    .line 1892
    return-void
.end method

.method drain()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1940
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-nez v0, :cond_0

    .line 1941
    return-void

    .line 1943
    :cond_0
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-eqz v0, :cond_1

    .line 1944
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    .line 1946
    :cond_1
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 1947
    iput v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1948
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1939
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1888
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1889
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1887
    return-void
.end method

.method getBlockDataMode()Z
    .locals 1

    .prologue
    .line 1843
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    return v0
.end method

.method getUTFLength(Ljava/lang/String;)J
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2208
    .local v3, "len":I
    const-wide/16 v6, 0x0

    .line 2209
    .local v6, "utflen":J
    const/4 v4, 0x0

    .local v4, "off":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 2210
    sub-int v5, v3, v4

    const/16 v8, 0x100

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2211
    .local v2, "csize":I
    add-int v5, v4, v2

    iget-object v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v9, 0x0

    invoke-virtual {p1, v4, v5, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 2212
    const/4 v1, 0x0

    .local v1, "cpos":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 2213
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    aget-char v0, v5, v1

    .line 2214
    .local v0, "c":C
    const/4 v5, 0x1

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    .line 2215
    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 2212
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2216
    :cond_0
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_1

    .line 2217
    const-wide/16 v8, 0x3

    add-long/2addr v6, v8

    goto :goto_2

    .line 2219
    :cond_1
    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    goto :goto_2

    .line 2222
    .end local v0    # "c":C
    :cond_2
    add-int/2addr v4, v2

    goto :goto_0

    .line 2224
    .end local v1    # "cpos":I
    .end local v2    # "csize":I
    :cond_3
    return-wide v6
.end method

.method setBlockDataMode(Z)Z
    .locals 1
    .param p1, "mode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1830
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-ne v0, p1, :cond_0

    .line 1831
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    return v0

    .line 1833
    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1834
    iput-boolean p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    .line 1835
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
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
    .line 1873
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    .line 1874
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1876
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1872
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1880
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1879
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1884
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    .line 1883
    return-void
.end method

.method write([BIIZ)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "copy"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x400

    .line 1907
    if-nez p4, :cond_0

    iget-boolean v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    :goto_0
    if-nez v1, :cond_2

    .line 1908
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1909
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 1910
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1911
    return-void

    .line 1907
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1918
    :cond_1
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-nez v1, :cond_4

    .line 1920
    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    .line 1921
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1922
    add-int/lit16 p2, p2, 0x400

    .line 1923
    add-int/lit16 p3, p3, -0x400

    .line 1914
    :cond_2
    :goto_1
    if-lez p3, :cond_5

    .line 1915
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-lt v1, v3, :cond_3

    .line 1916
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1918
    :cond_3
    if-lt p3, v3, :cond_4

    if-eqz p4, :cond_1

    .line 1925
    :cond_4
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v1, v1, 0x400

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1926
    .local v0, "wlen":I
    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1927
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1928
    add-int/2addr p2, v0

    .line 1929
    sub-int/2addr p3, v0

    goto :goto_1

    .line 1932
    .end local v0    # "wlen":I
    :cond_5
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    .line 1905
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1978
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    .line 1979
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1981
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putBoolean([BIZ)V

    .line 1977
    return-void
.end method

.method writeBooleans([ZII)V
    .locals 6
    .param p1, "v"    # [Z
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2091
    add-int v0, p2, p3

    .line 2092
    .local v0, "endoff":I
    :goto_0
    if-ge p2, v0, :cond_2

    .line 2093
    iget v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v4, 0x400

    if-lt v3, v4, :cond_0

    .line 2094
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2096
    :cond_0
    iget v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v3, v3, 0x400

    add-int/2addr v3, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "stop":I
    move v1, p2

    .line 2097
    .end local p2    # "off":I
    .local v1, "off":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 2098
    iget-object v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-boolean v5, p1, v1

    invoke-static {v3, v4, v5}, Ljava/io/Bits;->putBoolean([BIZ)V

    move v1, p2

    .end local p2    # "off":I
    .restart local v1    # "off":I
    goto :goto_1

    :cond_1
    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_0

    .line 2090
    .end local v2    # "stop":I
    :cond_2
    return-void
.end method

.method public writeByte(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1985
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    .line 1986
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 1988
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1984
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2046
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 2047
    .local v3, "endoff":I
    const/4 v0, 0x0

    .line 2048
    .local v0, "cpos":I
    const/4 v2, 0x0

    .line 2049
    .local v2, "csize":I
    const/4 v5, 0x0

    .local v5, "off":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 2050
    if-lt v0, v2, :cond_0

    .line 2051
    const/4 v0, 0x0

    .line 2052
    sub-int v7, v3, v5

    const/16 v8, 0x100

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2053
    add-int v7, v5, v2

    iget-object v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v9, 0x0

    invoke-virtual {p1, v5, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 2055
    :cond_0
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v8, 0x400

    if-lt v7, v8, :cond_1

    .line 2056
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    .line 2058
    :cond_1
    sub-int v7, v2, v0

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v8, v8, 0x400

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2059
    .local v4, "n":I
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int v6, v7, v4

    .line 2060
    .local v6, "stop":I
    :goto_1
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-ge v7, v6, :cond_2

    .line 2061
    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    iget-object v9, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "cpos":I
    .local v1, "cpos":I
    aget-char v9, v9, v0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    move v0, v1

    .end local v1    # "cpos":I
    .restart local v0    # "cpos":I
    goto :goto_1

    .line 2063
    :cond_2
    add-int/2addr v5, v4

    goto :goto_0

    .line 2045
    .end local v4    # "n":I
    .end local v6    # "stop":I
    :cond_3
    return-void
.end method

.method public writeChar(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1992
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 1993
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-char v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/Bits;->putChar([BIC)V

    .line 1994
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 1991
    :goto_0
    return-void

    .line 1996
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_0
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2068
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2069
    .local v1, "endoff":I
    const/4 v2, 0x0

    .local v2, "off":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2070
    sub-int v3, v1, v2

    const/16 v4, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2071
    .local v0, "csize":I
    add-int v3, v2, v0

    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    invoke-virtual {p1, v2, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 2072
    iget-object v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    invoke-virtual {p0, v3, v5, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars([CII)V

    .line 2073
    add-int/2addr v2, v0

    goto :goto_0

    .line 2067
    .end local v0    # "csize":I
    :cond_0
    return-void
.end method

.method writeChars([CII)V
    .locals 7
    .param p1, "v"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2105
    add-int v1, p2, p3

    .local v1, "endoff":I
    move v2, p2

    .line 2106
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2107
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2104
    const/16 v5, 0x3fe

    .line 2107
    if-gt v4, v5, :cond_0

    .line 2108
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x1

    .line 2109
    .local v0, "avail":I
    add-int v4, v2, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2110
    .local v3, "stop":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2111
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-char v6, p1, v2

    invoke-static {v4, v5, v6}, Ljava/io/Bits;->putChar([BIC)V

    .line 2112
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_1

    .line 2115
    .end local v0    # "avail":I
    .end local v3    # "stop":I
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-char v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeChar(I)V

    :goto_2
    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    .line 2103
    :cond_1
    return-void

    .restart local v0    # "avail":I
    .restart local v3    # "stop":I
    :cond_2
    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_2
.end method

.method public writeDouble(D)V
    .locals 3
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2037
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 2038
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1, p2}, Ljava/io/Bits;->putDouble([BID)V

    .line 2039
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2036
    :goto_0
    return-void

    .line 2041
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_0
.end method

.method writeDoubles([DII)V
    .locals 8
    .param p1, "v"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2189
    add-int v2, p2, p3

    .local v2, "endoff":I
    move v3, p2

    .line 2190
    .end local p2    # "off":I
    .local v3, "off":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2191
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2188
    const/16 v5, 0x3f8

    .line 2191
    if-gt v4, v5, :cond_0

    .line 2192
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x3

    .line 2193
    .local v0, "avail":I
    sub-int v4, v2, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2194
    .local v1, "chunklen":I
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, v3, v4, v5, v1}, Ljava/io/ObjectOutputStream;->-wrap0([DI[BII)V

    .line 2195
    add-int p2, v3, v1

    .line 2196
    .end local v3    # "off":I
    .restart local p2    # "off":I
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    shl-int/lit8 v5, v1, 0x3

    add-int/2addr v4, v5

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .end local v0    # "avail":I
    .end local v1    # "chunklen":I
    :goto_1
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_0

    .line 2198
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget-wide v6, p1, v3

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_1

    .line 2187
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :cond_1
    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2019
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 2020
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putFloat([BIF)V

    .line 2021
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2018
    :goto_0
    return-void

    .line 2023
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0
.end method

.method writeFloats([FII)V
    .locals 6
    .param p1, "v"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2156
    add-int v2, p2, p3

    .local v2, "endoff":I
    move v3, p2

    .line 2157
    .end local p2    # "off":I
    .local v3, "off":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 2158
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2155
    const/16 v5, 0x3fc

    .line 2158
    if-gt v4, v5, :cond_0

    .line 2159
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x2

    .line 2160
    .local v0, "avail":I
    sub-int v4, v2, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2161
    .local v1, "chunklen":I
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, v3, v4, v5, v1}, Ljava/io/ObjectOutputStream;->-wrap1([FI[BII)V

    .line 2162
    add-int p2, v3, v1

    .line 2163
    .end local v3    # "off":I
    .restart local p2    # "off":I
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .end local v0    # "avail":I
    .end local v1    # "chunklen":I
    :goto_1
    move v3, p2

    .end local p2    # "off":I
    .restart local v3    # "off":I
    goto :goto_0

    .line 2165
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v3, 0x1

    .end local v3    # "off":I
    .restart local p2    # "off":I
    aget v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    .line 2154
    .end local p2    # "off":I
    .restart local v3    # "off":I
    :cond_1
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2010
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 2011
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putInt([BII)V

    .line 2012
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2009
    :goto_0
    return-void

    .line 2014
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method writeInts([III)V
    .locals 7
    .param p1, "v"    # [I
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2139
    add-int v1, p2, p3

    .local v1, "endoff":I
    move v2, p2

    .line 2140
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2141
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2138
    const/16 v5, 0x3fc

    .line 2141
    if-gt v4, v5, :cond_0

    .line 2142
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x2

    .line 2143
    .local v0, "avail":I
    add-int v4, v2, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2144
    .local v3, "stop":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2145
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget v6, p1, v2

    invoke-static {v4, v5, v6}, Ljava/io/Bits;->putInt([BII)V

    .line 2146
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_1

    .line 2149
    .end local v0    # "avail":I
    .end local v3    # "stop":I
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    .line 2137
    :cond_1
    return-void

    .restart local v0    # "avail":I
    .restart local v3    # "stop":I
    :cond_2
    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_2
.end method

.method public writeLong(J)V
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2028
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 2029
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1, p2}, Ljava/io/Bits;->putLong([BIJ)V

    .line 2030
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2027
    :goto_0
    return-void

    .line 2032
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_0
.end method

.method writeLongUTF(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2251
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongUTF(Ljava/lang/String;J)V

    .line 2250
    return-void
.end method

.method writeLongUTF(Ljava/lang/String;J)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2259
    invoke-virtual {p0, p2, p3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLong(J)V

    .line 2260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 2261
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2258
    :goto_0
    return-void

    .line 2263
    :cond_0
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    goto :goto_0
.end method

.method writeLongs([JII)V
    .locals 8
    .param p1, "v"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2172
    add-int v1, p2, p3

    .local v1, "endoff":I
    move v2, p2

    .line 2173
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2174
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2171
    const/16 v5, 0x3f8

    .line 2174
    if-gt v4, v5, :cond_0

    .line 2175
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x3

    .line 2176
    .local v0, "avail":I
    add-int v4, v2, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2177
    .local v3, "stop":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2178
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-wide v6, p1, v2

    invoke-static {v4, v5, v6, v7}, Ljava/io/Bits;->putLong([BIJ)V

    .line 2179
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_1

    .line 2182
    .end local v0    # "avail":I
    .end local v3    # "stop":I
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-wide v6, p1, v2

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    :goto_2
    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    .line 2170
    :cond_1
    return-void

    .restart local v0    # "avail":I
    .restart local v3    # "stop":I
    :cond_2
    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_2
.end method

.method public writeShort(I)V
    .locals 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2001
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 2002
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/Bits;->putShort([BIS)V

    .line 2003
    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2000
    :goto_0
    return-void

    .line 2005
    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0
.end method

.method writeShorts([SII)V
    .locals 7
    .param p1, "v"    # [S
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2122
    add-int v1, p2, p3

    .local v1, "endoff":I
    move v2, p2

    .line 2123
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2124
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    .line 2121
    const/16 v5, 0x3fe

    .line 2124
    if-gt v4, v5, :cond_0

    .line 2125
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x1

    .line 2126
    .local v0, "avail":I
    add-int v4, v2, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2127
    .local v3, "stop":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 2128
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-short v6, p1, v2

    invoke-static {v4, v5, v6}, Ljava/io/Bits;->putShort([BIS)V

    .line 2129
    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_1

    .line 2132
    .end local v0    # "avail":I
    .end local v3    # "stop":I
    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    aget-short v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_2
    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    .line 2120
    :cond_1
    return-void

    .restart local v0    # "avail":I
    .restart local v3    # "stop":I
    :cond_2
    move p2, v2

    .end local v2    # "off":I
    .restart local p2    # "off":I
    goto :goto_2
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2078
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;J)V

    .line 2077
    return-void
.end method

.method writeUTF(Ljava/lang/String;J)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "utflen"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2234
    const-wide/32 v0, 0xffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 2235
    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v0

    .line 2237
    :cond_0
    long-to-int v0, p2

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    .line 2238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 2239
    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 2233
    :goto_0
    return-void

    .line 2241
    :cond_1
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    goto :goto_0
.end method
