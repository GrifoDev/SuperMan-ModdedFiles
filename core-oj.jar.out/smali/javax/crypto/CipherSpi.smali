.class public abstract Ljavax/crypto/CipherSpi;
.super Ljava/lang/Object;
.source "CipherSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "Input and output buffers must not be null"

    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    sub-int v5, v17, v18

    if-eqz p3, :cond_2

    if-nez v5, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    move/from16 v0, v21

    if-ge v2, v0, :cond_3

    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Need at least "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bytes of space in output buffer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v15

    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v4, v2, v18

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v7, v2, v22

    if-eqz p3, :cond_4

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v19

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int v2, v22, v19

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v19

    :cond_4
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v19

    goto :goto_0

    :cond_5
    if-nez v14, :cond_9

    if-eqz v15, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v7, v2, v22

    invoke-static {v5}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v2

    new-array v3, v2, [B

    const/16 v25, 0x0

    :cond_6
    array-length v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    if-nez p3, :cond_7

    if-eq v5, v11, :cond_8

    :cond_7
    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v19

    :goto_1
    add-int v25, v25, v19

    add-int v7, v7, v19

    sub-int/2addr v5, v11

    if-gtz v5, :cond_6

    add-int v2, v22, v25

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v25

    :cond_8
    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v19

    goto :goto_1

    :cond_9
    if-eqz v14, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v4, v2, v18

    :goto_2
    invoke-static/range {v21 .. v21}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v2

    new-array v6, v2, [B

    array-length v0, v6

    move/from16 v23, v0

    const/16 v25, 0x0

    const/16 v24, 0x0

    :cond_a
    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-nez v14, :cond_b

    if-nez v24, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    :cond_b
    if-nez p3, :cond_c

    if-eq v5, v11, :cond_e

    :cond_c
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v4

    move-object v12, v6

    :try_start_0
    invoke-virtual/range {v8 .. v13}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v19

    :goto_3
    const/16 v24, 0x0

    add-int/2addr v4, v11

    sub-int/2addr v5, v11

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v6, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    add-int v25, v25, v19

    :goto_4
    if-gtz v5, :cond_a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v25

    :cond_d
    invoke-static {v5}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    goto :goto_2

    :cond_e
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v4

    move-object v12, v6

    :try_start_1
    invoke-virtual/range {v8 .. v13}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    goto :goto_3

    :catch_0
    move-exception v16

    if-eqz v24, :cond_f

    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v8, "Could not determine buffer size"

    invoke-direct {v2, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/security/ProviderException;

    throw v2

    :cond_f
    const/16 v24, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v20

    move/from16 v0, v20

    new-array v6, v0, [B

    goto :goto_4
.end method

.method static getTempArraySize(I)I
    .locals 1

    const/16 v0, 0x1000

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/crypto/CipherSpi;->bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I

    move-result v0

    return v0
.end method

.method protected abstract engineDoFinal([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineDoFinal([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineGetBlockSize()I
.end method

.method protected abstract engineGetIV()[B
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract engineGetOutputSize(I)I
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineSetMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract engineSetPadding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Ljavax/crypto/CipherSpi;->bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v3, "Internal error in update()"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v3, "Internal error in update()"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract engineUpdate([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate([BII)[B
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The underlying Cipher implementation does not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdateAAD([BII)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "The underlying Cipher implementation does not support this method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
