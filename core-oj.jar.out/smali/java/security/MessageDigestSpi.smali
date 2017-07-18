.class public abstract Ljava/security/MessageDigestSpi;
.super Ljava/lang/Object;
.source "MessageDigestSpi.java"


# instance fields
.field private tempArray:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected engineDigest([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    array-length v1, v0

    if-ge p3, v1, :cond_0

    new-instance v1, Ljava/security/DigestException;

    const-string/jumbo v2, "partial digests not returned"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    array-length v2, v0

    if-ge v1, v2, :cond_1

    new-instance v1, Ljava/security/DigestException;

    const-string/jumbo v2, "insufficient space in the output buffer to store the digest"

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v1, v0

    return v1
.end method

.method protected abstract engineDigest()[B
.end method

.method protected engineGetDigestLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract engineReset()V
.end method

.method protected abstract engineUpdate(B)V
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int v7, v5, v6

    sub-int v8, v3, v6

    invoke-virtual {p0, v0, v7, v8}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Lsun/security/jca/JCAUtil;->getTempArraySize(I)I

    move-result v4

    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    if-eqz v7, :cond_3

    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    array-length v7, v7

    if-le v4, v7, :cond_4

    :cond_3
    new-array v7, v4, [B

    iput-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    :cond_4
    :goto_0
    if-lez v2, :cond_1

    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    array-length v7, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    invoke-virtual {p1, v7, v8, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Ljava/security/MessageDigestSpi;->tempArray:[B

    invoke-virtual {p0, v7, v8, v1}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    sub-int/2addr v2, v1

    goto :goto_0
.end method

.method protected abstract engineUpdate([BII)V
.end method
