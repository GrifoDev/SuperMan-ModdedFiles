.class public abstract Ljavax/crypto/MacSpi;
.super Ljava/lang/Object;
.source "MacSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
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

    .prologue
    .line 147
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_0

    .line 148
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected abstract engineDoFinal()[B
.end method

.method protected abstract engineGetMacLength()I
.end method

.method protected abstract engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineReset()V
.end method

.method protected abstract engineUpdate(B)V
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v7, 0x0

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 107
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    .line 108
    .local v4, "ofs":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 109
    .local v5, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 110
    .local v3, "lim":I
    add-int v6, v4, v5

    sub-int v7, v3, v5

    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 111
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    .end local v3    # "lim":I
    .end local v4    # "ofs":I
    .end local v5    # "pos":I
    :cond_1
    return-void

    .line 113
    .end local v0    # "b":[B
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 114
    .local v2, "len":I
    invoke-static {v2}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v6

    new-array v0, v6, [B

    .line 115
    .restart local v0    # "b":[B
    :goto_0
    if-lez v2, :cond_1

    .line 116
    array-length v6, v0

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 117
    .local v1, "chunk":I
    invoke-virtual {p1, v0, v7, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {p0, v0, v7, v1}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 119
    sub-int/2addr v2, v1

    goto :goto_0
.end method

.method protected abstract engineUpdate([BII)V
.end method
