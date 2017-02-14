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

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    iput-boolean v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    iput v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    iput-object p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    return-void
.end method

.method private warnIfClosed()V
    .locals 3

    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "The app is relying on undefined behavior. Attempting to write to a closed ObjectOutputStream could produce corrupt output in a future release of Android."

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Stream Closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    :cond_0
    return-void
.end method

.method private writeBlockHeader(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/16 v1, 0x7a

    aput-byte v1, v0, v3

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    invoke-static {v0, v2, p1}, Ljava/io/Bits;->putInt([BII)V

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->hbuf:[B

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private writeUTFBody(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x7f

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    sub-int v5, v3, v4

    const/16 v6, 0x100

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v5, v4, v2

    iget-object v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    invoke-virtual {p1, v4, v5, v6, v8}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    aget-char v0, v5, v1

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v6, 0x3fd

    if-gt v5, v6, :cond_2

    if-gt v0, v9, :cond_0

    if-eqz v0, :cond_0

    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v7, v0

    aput-byte v7, v5, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_1

    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x2

    shr-int/lit8 v7, v0, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x0

    shr-int/lit8 v7, v0, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_2

    :cond_1
    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v7, v0, 0x0

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v6, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v6, v6, 0x0

    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    goto :goto_2

    :cond_2
    if-gt v0, v9, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto :goto_2

    :cond_3
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_4

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    shr-int/lit8 v5, v0, 0x0

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_4
    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    shr-int/lit8 v5, v0, 0x0

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {p0, v5}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_5
    add-int/2addr v4, v2

    goto/16 :goto_0

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

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->flush()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnOnceWhenWriting:Z

    return-void
.end method

.method drain()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-direct {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    :cond_1
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method getBlockDataMode()Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    return v0
.end method

.method getUTFLength(Ljava/lang/String;)J
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    sub-int v5, v3, v4

    const/16 v8, 0x100

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v5, v4, v2

    iget-object v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v9, 0x0

    invoke-virtual {p1, v4, v5, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    aget-char v0, v5, v1

    const/4 v5, 0x1

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7f

    if-gt v0, v5, :cond_0

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v5, 0x7ff

    if-le v0, v5, :cond_1

    const-wide/16 v8, 0x3

    add-long/2addr v6, v8

    goto :goto_2

    :cond_1
    const-wide/16 v8, 0x2

    add-long/2addr v6, v8

    goto :goto_2

    :cond_2
    add-int/2addr v4, v2

    goto :goto_0

    :cond_3
    return-wide v6
.end method

.method setBlockDataMode(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    iput-boolean p1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->write([BIIZ)V

    return-void
.end method

.method write([BIIZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x400

    if-nez p4, :cond_0

    iget-boolean v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->blkmode:Z

    :goto_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-nez v1, :cond_4

    invoke-direct {p0, v3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBlockHeader(I)V

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/lit16 p2, p2, 0x400

    add-int/lit16 p3, p3, -0x400

    :cond_2
    :goto_1
    if-lez p3, :cond_5

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-lt v1, v3, :cond_3

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    :cond_3
    if-lt p3, v3, :cond_4

    if-eqz p4, :cond_1

    :cond_4
    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v1, v1, 0x400

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->warnIfClosed()V

    return-void
.end method

.method public writeBoolean(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putBoolean([BIZ)V

    return-void
.end method

.method writeBooleans([ZII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_2

    iget v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v4, 0x400

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    :cond_0
    iget v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v3, v3, 0x400

    add-int/2addr v3, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, p2

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v1, 0x1

    aget-boolean v5, p1, v1

    invoke-static {v3, v4, v5}, Ljava/io/Bits;->putBoolean([BIZ)V

    move v1, p2

    goto :goto_1

    :cond_1
    move p2, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeByte(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    sub-int v7, v3, v5

    const/16 v8, 0x100

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v7, v5, v2

    iget-object v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    const/4 v9, 0x0

    invoke-virtual {p1, v5, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    :cond_0
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v8, 0x400

    if-lt v7, v8, :cond_1

    invoke-virtual {p0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->drain()V

    :cond_1
    sub-int v7, v2, v0

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v8, v8, 0x400

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int v6, v7, v4

    :goto_1
    iget v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    if-ge v7, v6, :cond_2

    iget-object v7, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v8, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    iget-object v9, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v9, v9, v0

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/2addr v5, v4

    goto :goto_0

    :cond_3
    return-void
.end method

.method public writeChar(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-char v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/Bits;->putChar([BIC)V

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    goto :goto_0
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    sub-int v3, v1, v2

    const/16 v4, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int v3, v2, v0

    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    invoke-virtual {p1, v2, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v3, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->cbuf:[C

    invoke-virtual {p0, v3, v5, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeChars([CII)V

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method writeChars([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v1, p2, p3

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_1

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v5, 0x3fe

    if-gt v4, v5, :cond_0

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x1

    add-int v4, v2, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v2, 0x1

    aget-char v6, p1, v2

    invoke-static {v4, v5, v6}, Ljava/io/Bits;->putChar([BIC)V

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v2, p2

    goto :goto_1

    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v2, 0x1

    aget-char v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeChar(I)V

    :goto_2
    move v2, p2

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move p2, v2

    goto :goto_2
.end method

.method public writeDouble(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1, p2}, Ljava/io/Bits;->putDouble([BID)V

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_0
.end method

.method writeDoubles([DII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v2, p2, p3

    move v3, p2

    :goto_0
    if-ge v3, v2, :cond_1

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v5, 0x3f8

    if-gt v4, v5, :cond_0

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x3

    sub-int v4, v2, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, v3, v4, v5, v1}, Ljava/io/ObjectOutputStream;->-wrap0([DI[BII)V

    add-int p2, v3, v1

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    shl-int/lit8 v5, v1, 0x3

    add-int/2addr v4, v5

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    :goto_1
    move v3, p2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v3, 0x1

    aget-wide v6, p1, v3

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writeFloat(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putFloat([BIF)V

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_0
.end method

.method writeFloats([FII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v2, p2, p3

    move v3, p2

    :goto_0
    if-ge v3, v2, :cond_1

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v5, 0x3fc

    if-gt v4, v5, :cond_0

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x2

    sub-int v4, v2, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {p1, v3, v4, v5, v1}, Ljava/io/ObjectOutputStream;->-wrap1([FI[BII)V

    add-int p2, v3, v1

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    :goto_1
    move v3, p2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v3, 0x1

    aget v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1}, Ljava/io/Bits;->putInt([BII)V

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method writeInts([III)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v1, p2, p3

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_1

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v5, 0x3fc

    if-gt v4, v5, :cond_0

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x2

    add-int v4, v2, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v2, 0x1

    aget v6, p1, v2

    invoke-static {v4, v5, v6}, Ljava/io/Bits;->putInt([BII)V

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v2, p2

    goto :goto_1

    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v2, 0x1

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    move v2, p2

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move p2, v2

    goto :goto_2
.end method

.method public writeLong(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    invoke-static {v0, v1, p1, p2}, Ljava/io/Bits;->putLong([BIJ)V

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_0
.end method

.method writeLongUTF(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLongUTF(Ljava/lang/String;J)V

    return-void
.end method

.method writeLongUTF(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeLong(J)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    goto :goto_0
.end method

.method writeLongs([JII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v1, p2, p3

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_1

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v5, 0x3f8

    if-gt v4, v5, :cond_0

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x3

    add-int v4, v2, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v2, 0x1

    aget-wide v6, p1, v2

    invoke-static {v4, v5, v6, v7}, Ljava/io/Bits;->putLong([BIJ)V

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v2, p2

    goto :goto_1

    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v2, 0x1

    aget-wide v6, p1, v2

    invoke-virtual {v4, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    :goto_2
    move v2, p2

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move p2, v2

    goto :goto_2
.end method

.method public writeShort(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/Bits;->putShort([BIS)V

    iget v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0
.end method

.method writeShorts([SII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v1, p2, p3

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_1

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    const/16 v5, 0x3fe

    if-gt v4, v5, :cond_0

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    rsub-int v4, v4, 0x400

    shr-int/lit8 v0, v4, 0x1

    add-int v4, v2, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 p2, v2, 0x1

    aget-short v6, p1, v2

    invoke-static {v4, v5, v6}, Ljava/io/Bits;->putShort([BIS)V

    iget v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->pos:I

    move v2, p2

    goto :goto_1

    :cond_0
    iget-object v4, p0, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->dout:Ljava/io/DataOutputStream;

    add-int/lit8 p2, v2, 0x1

    aget-short v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    :goto_2
    move v2, p2

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move p2, v2

    goto :goto_2
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->getUTFLength(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTF(Ljava/lang/String;J)V

    return-void
.end method

.method writeUTF(Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0xffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/UTFDataFormatException;

    invoke-direct {v0}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v0

    :cond_0
    long-to-int v0, p2

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeShort(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeBytes(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream$BlockDataOutputStream;->writeUTFBody(Ljava/lang/String;)V

    goto :goto_0
.end method
