.class public Ljava/util/zip/GZIPInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "GZIPInputStream.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FTEXT:I = 0x1

.field public static final GZIP_MAGIC:I = 0x8b1f


# instance fields
.field private closed:Z

.field protected crc:Ljava/util/zip/CRC32;

.field protected eos:Z

.field private tmpbuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)I

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private readHeader(Ljava/io/InputStream;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x8

    new-instance v1, Ljava/util/zip/CheckedInputStream;

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-direct {v1, p1, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v5

    const v6, 0x8b1f

    if-eq v5, v6, :cond_0

    new-instance v5, Ljava/util/zip/ZipException;

    const-string/jumbo v6, "Not in GZIP format"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v5

    if-eq v5, v7, :cond_1

    new-instance v5, Ljava/util/zip/ZipException;

    const-string/jumbo v6, "Unsupported compression method"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v0

    const/4 v5, 0x6

    invoke-direct {p0, v1, v5}, Ljava/util/zip/GZIPInputStream;->skipBytes(Ljava/io/InputStream;I)V

    const/16 v3, 0xa

    and-int/lit8 v5, v0, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/GZIPInputStream;->skipBytes(Ljava/io/InputStream;I)V

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v3, v5, 0xa

    :cond_2
    and-int/lit8 v5, v0, 0x8

    if-ne v5, v7, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v5

    if-nez v5, :cond_3

    :cond_4
    and-int/lit8 v5, v0, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v5

    if-nez v5, :cond_5

    :cond_6
    and-int/lit8 v5, v0, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    long-to-int v5, v6

    const v6, 0xffff

    and-int v4, v5, v6

    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v5

    if-eq v5, v4, :cond_7

    new-instance v5, Ljava/util/zip/ZipException;

    const-string/jumbo v6, "Corrupt GZIP header"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    add-int/lit8 v3, v3, 0x2

    :cond_8
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    return v3
.end method

.method private readTrailer()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v1, Ljava/io/SequenceInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    iget v7, p0, Ljava/util/zip/GZIPInputStream;->len:I

    sub-int/2addr v7, v3

    invoke-direct {v5, v6, v7, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v1, v5, v0}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v6

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v6

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Ljava/util/zip/ZipException;

    const-string/jumbo v6, "Corrupt GZIP trailer"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    if-gtz v5, :cond_3

    const/16 v5, 0x1a

    if-le v3, v5, :cond_5

    :cond_3
    :try_start_0
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int/lit8 v2, v5, 0x8

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->reset()V

    if-le v3, v2, :cond_4

    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v6, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    iget v7, p0, Ljava/util/zip/GZIPInputStream;->len:I

    sub-int/2addr v7, v3

    add-int/2addr v7, v2

    sub-int v8, v3, v2

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/zip/Inflater;->setInput([BII)V

    :cond_4
    return v12

    :catch_0
    move-exception v4

    return v13

    :cond_5
    return v13
.end method

.method private readUByte(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    if-lt v0, v1, :cond_1

    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".read() returned value out of range -1..255: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return v0
.end method

.method private readUInt(Ljava/io/InputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v0, v2

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v2, v0

    return-wide v2
.end method

.method private readUShort(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    return v1
.end method

.method private skipBytes(Ljava/io/InputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :goto_0
    if-lez p2, :cond_2

    iget-object v2, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    array-length v1, v1

    if-ge p2, v1, :cond_0

    move v1, p2

    :goto_1
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    array-length v1, v1

    goto :goto_1

    :cond_1
    sub-int/2addr p2, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->ensureOpen()V

    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->readTrailer()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v1

    return v1

    :cond_2
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0
.end method
