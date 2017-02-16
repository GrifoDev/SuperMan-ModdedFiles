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
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I
    .param p3, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 91
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0, p2, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 42
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 94
    iput-boolean v2, p0, Ljava/util/zip/GZIPOutputStream;->usesDefaultDeflater:Z

    .line 95
    invoke-direct {p0}, Ljava/util/zip/GZIPOutputStream;->writeHeader()V

    .line 96
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 130
    return-void
.end method

.method private writeHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 182
    return-void

    .line 183
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
    .param p1, "i"    # I
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xffff

    .line 211
    and-int v0, p1, v1

    invoke-direct {p0, v0, p2, p3}, Ljava/util/zip/GZIPOutputStream;->writeShort(I[BI)V

    .line 212
    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x2

    invoke-direct {p0, v0, p2, v1}, Ljava/util/zip/GZIPOutputStream;->writeShort(I[BI)V

    .line 210
    return-void
.end method

.method private writeShort(I[BI)V
    .locals 2
    .param p1, "s"    # I
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 221
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 219
    return-void
.end method

.method private writeTrailer([BI)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->writeInt(I[BI)V

    .line 203
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Ljava/util/zip/GZIPOutputStream;->writeInt(I[BI)V

    .line 201
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

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 159
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    iget-object v4, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 161
    .local v0, "len":I
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x8

    if-gt v0, v2, :cond_1

    .line 163
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-direct {p0, v2, v0}, Ljava/util/zip/GZIPOutputStream;->writeTrailer([BI)V

    .line 164
    add-int/lit8 v0, v0, 0x8

    .line 165
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-virtual {v2, v3, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 166
    return-void

    .line 168
    :cond_1
    if-lez v0, :cond_0

    .line 169
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-virtual {v2, v3, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 173
    .end local v0    # "len":I
    :cond_2
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 174
    .local v1, "trailer":[B
    invoke-direct {p0, v1, v5}, Ljava/util/zip/GZIPOutputStream;->writeTrailer([BI)V

    .line 175
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 156
    .end local v1    # "trailer":[B
    :cond_3
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 146
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 147
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 144
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
