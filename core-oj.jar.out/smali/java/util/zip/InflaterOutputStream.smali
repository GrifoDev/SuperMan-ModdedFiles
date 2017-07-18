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

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Inflater;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/InflaterOutputStream;->wbuf:[B

    iput-boolean v1, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    iput-boolean v1, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null output"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null inflater"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p2, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

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

    const/4 v2, 0x1

    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iput-boolean v2, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iput-boolean v2, p0, Ljava/util/zip/InflaterOutputStream;->closed:Z

    throw v0
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    invoke-virtual {p0}, Ljava/util/zip/InflaterOutputStream;->flush()V

    iget-boolean v0, p0, Ljava/util/zip/InflaterOutputStream;->usesDefaultInflater:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

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

    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_1

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

    :cond_0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    iget-object v5, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "Invalid ZLIB data format"

    :cond_3
    new-instance v3, Ljava/util/zip/ZipException;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->wbuf:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/util/zip/InflaterOutputStream;->wbuf:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/zip/InflaterOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/zip/InflaterOutputStream;->ensureOpen()V

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "Null buffer for read"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    array-length v4, p1

    sub-int/2addr v4, p2

    if-gt p3, v4, :cond_1

    if-nez p3, :cond_3

    return-void

    :cond_3
    :try_start_0
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    if-ge p3, v4, :cond_5

    :cond_4
    return-void

    :cond_5
    const/16 v4, 0x200

    if-ge p3, v4, :cond_9

    move v3, p3

    :goto_0
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    :cond_6
    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v5, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    iget-object v6, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    array-length v6, v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-lez v2, :cond_7

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Ljava/util/zip/InflaterOutputStream;->buf:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    :cond_7
    if-gtz v2, :cond_6

    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Ljava/util/zip/InflaterOutputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/util/zip/ZipException;

    const-string/jumbo v5, "ZLIB dictionary missing"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "Invalid ZLIB data format"

    :cond_8
    new-instance v4, Ljava/util/zip/ZipException;

    invoke-direct {v4, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_9
    const/16 v3, 0x200

    goto :goto_0
.end method
