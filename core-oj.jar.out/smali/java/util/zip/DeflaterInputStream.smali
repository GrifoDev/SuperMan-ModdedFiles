.class public Ljava/util/zip/DeflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "DeflaterInputStream.java"


# instance fields
.field protected final buf:[B

.field protected final def:Ljava/util/zip/Deflater;

.field private rbuf:[B

.field private reachEOF:Z

.field private usesDefaultDeflater:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v0, v2, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    iput-boolean v1, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    iput-boolean v1, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null deflater"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ge p3, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

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

    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :try_start_0
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    :cond_0
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    throw v0
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 1

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

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Ljava/util/zip/DeflaterInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Null buffer for read"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_2
    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt p3, v2, :cond_1

    if-nez p3, :cond_3

    return v5

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-lez p3, :cond_4

    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    if-nez v0, :cond_5

    const/4 v0, -0x1

    :cond_5
    return v0

    :cond_6
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_8

    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    :cond_7
    :goto_1
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_8
    if-lez v1, :cond_7

    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    invoke-virtual {v2, v3, v5, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    goto :goto_1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x200

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "negative skip length"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    array-length v4, v4

    if-ge v4, v7, :cond_1

    new-array v4, v7, [B

    iput-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    :cond_1
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    const-wide/16 v0, 0x0

    :goto_0
    if-lez v3, :cond_2

    iget-object v5, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    array-length v4, v4

    if-gt v3, v4, :cond_3

    move v4, v3

    :goto_1
    invoke-virtual {p0, v5, v6, v4}, Ljava/util/zip/DeflaterInputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_4

    :cond_2
    return-wide v0

    :cond_3
    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    array-length v4, v4

    goto :goto_1

    :cond_4
    int-to-long v4, v2

    add-long/2addr v0, v4

    sub-int/2addr v3, v2

    goto :goto_0
.end method
