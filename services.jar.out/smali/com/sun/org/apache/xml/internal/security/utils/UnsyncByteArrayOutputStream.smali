.class public Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "Unknown"


# instance fields
.field buf:[B

.field pos:I

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->size:I

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->buf:[B

    return-void
.end method


# virtual methods
.method expandSize()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->size:I

    shl-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->buf:[B

    iget v3, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->buf:[B

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->size:I

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    return-void
.end method

.method public toByteArray()[B
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public write(I)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->size:I

    if-ge v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->buf:[B

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    int-to-byte v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->expandSize()V

    goto :goto_0
.end method

.method public write([B)V
    .locals 5

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->size:I

    if-gt v0, v1, :cond_0

    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->buf:[B

    iget v3, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->expandSize()V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->size:I

    if-gt v0, v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->pos:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/UnsyncByteArrayOutputStream;->expandSize()V

    goto :goto_0
.end method
