.class public Ljava/util/zip/GZIPOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "GZIPOutputStream.java"


# static fields
.field private static final GZIP_MAGIC:I = 0x8b1f

.field private static final TRAILER_SIZE:I = 0x8


# instance fields
.field protected crc:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0, p2, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    iput-boolean v2, p0, Ljava/util/zip/GZIPOutputStream;->usesDefaultDeflater:Z

    invoke-direct {p0}, Ljava/util/zip/GZIPOutputStream;->writeHeader()V

    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    return-void
.end method

.method private writeHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void

    nop

    :array_0
    .array-data 1
        0x1ft
        -0x75t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private writeInt(I[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v1, 0xffff

    and-int v0, p1, v1

    invoke-direct {p0, v0, p2, p3}, Ljava/util/zip/GZIPOutputStream;->writeShort(I[BI)V

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x2

    invoke-direct {p0, v0, p2, v1}, Ljava/util/zip/GZIPOutputStream;->writeShort(I[BI)V

    return-void
.end method

.method private writeShort(I[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return-void
.end method

.method private writeTrailer([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->writeInt(I[BI)V

    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Ljava/util/zip/GZIPOutputStream;->writeInt(I[BI)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    iget-object v4, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x8

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-direct {p0, v2, v0}, Ljava/util/zip/GZIPOutputStream;->writeTrailer([BI)V

    add-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-virtual {v2, v3, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_1
    if-lez v0, :cond_0

    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-virtual {v2, v3, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    new-array v1, v2, [B

    invoke-direct {p0, v1, v5}, Ljava/util/zip/GZIPOutputStream;->writeTrailer([BI)V

    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
