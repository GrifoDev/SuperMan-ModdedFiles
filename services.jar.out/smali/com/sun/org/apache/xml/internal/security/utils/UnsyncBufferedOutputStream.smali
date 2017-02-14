.class public Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;
.super Ljava/io/OutputStream;
.source "Unknown"


# static fields
.field static final size:I = 0x2000


# instance fields
.field final buf:[B

.field final out:Ljava/io/OutputStream;

.field pointer:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->pointer:I

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method private final flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->pointer:I

    if-gtz v0, :cond_0

    :goto_0
    iput v3, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->pointer:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->buf:[B

    iget v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->pointer:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->flush()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->flushBuffer()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->pointer:I

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->buf:[B

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->pointer:I

    int-to-byte v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->flushBuffer()V

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x2000

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->pointer:I

    add-int/2addr v0, p3

    if-gt v0, v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->buf:[B

    iget v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->pointer:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->pointer:I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->flushBuffer()V

    if-gt p3, v1, :cond_1

    move v0, p3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
