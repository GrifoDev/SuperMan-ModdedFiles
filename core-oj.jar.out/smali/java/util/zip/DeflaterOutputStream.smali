.class public Ljava/util/zip/DeflaterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DeflaterOutputStream.java"


# instance fields
.field protected buf:[B

.field private closed:Z

.field protected def:Ljava/util/zip/Deflater;

.field private final syncFlush:Z

.field usesDefaultDeflater:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;

    .prologue
    .line 143
    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "size"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "size"    # I
    .param p4, "syncFlush"    # Z

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->closed:Z

    .line 146
    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    .line 84
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_1
    if-gtz p3, :cond_2

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    iput-object p2, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    .line 90
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    .line 91
    iput-boolean p4, p0, Ljava/util/zip/DeflaterOutputStream;->syncFlush:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "def"    # Ljava/util/zip/Deflater;
    .param p3, "syncFlush"    # Z

    .prologue
    .line 128
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "syncFlush"    # Z

    .prologue
    .line 163
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    .line 162
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
    .line 238
    iget-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 240
    iget-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->usesDefaultDeflater:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 242
    :cond_0
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterOutputStream;->closed:Z

    .line 237
    :cond_1
    return-void
.end method

.method protected deflate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "len":I
    :goto_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    iget-object v3, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 226
    :goto_0
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->deflate()V

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 274
    iget-boolean v1, p0, Ljava/util/zip/DeflaterOutputStream;->syncFlush:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 273
    return-void

    .line 275
    :cond_1
    const/4 v0, 0x0

    .line 276
    .local v0, "len":I
    :cond_2
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    iget-object v3, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    array-length v3, v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v5, v3, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 279
    iget-object v1, p0, Ljava/util/zip/DeflaterOutputStream;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    goto :goto_0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    new-array v0, v3, [B

    .line 188
    .local v0, "buf":[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 189
    invoke-virtual {p0, v0, v2, v3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 186
    return-void
.end method

.method public write([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "write beyond end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 205
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 206
    :cond_1
    if-nez p3, :cond_2

    .line 207
    return-void

    .line 209
    :cond_2
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 211
    :goto_0
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_3

    .line 212
    invoke-virtual {p0}, Ljava/util/zip/DeflaterOutputStream;->deflate()V

    goto :goto_0

    .line 200
    :cond_3
    return-void
.end method
