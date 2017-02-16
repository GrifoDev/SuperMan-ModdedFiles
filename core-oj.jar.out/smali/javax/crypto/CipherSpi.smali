.class public abstract Ljavax/crypto/CipherSpi;
.super Ljava/lang/Object;
.source "CipherSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    .locals 26
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .param p3, "isUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 738
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 739
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    .line 740
    const-string/jumbo v8, "Input and output buffers must not be null"

    .line 739
    invoke-direct {v2, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 742
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v18

    .line 743
    .local v18, "inPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    .line 744
    .local v17, "inLimit":I
    sub-int v5, v17, v18

    .line 745
    .local v5, "inLen":I
    if-eqz p3, :cond_2

    if-nez v5, :cond_2

    .line 746
    const/4 v2, 0x0

    return v2

    .line 748
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v21

    .line 749
    .local v21, "outLenNeeded":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    move/from16 v0, v21

    if-ge v2, v0, :cond_3

    .line 750
    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Need at least "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 751
    const-string/jumbo v9, " bytes of space in output buffer"

    .line 750
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 754
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v14

    .line 755
    .local v14, "a1":Z
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v15

    .line 757
    .local v15, "a2":Z
    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    .line 758
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 759
    .local v3, "inArray":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v4, v2, v18

    .line 760
    .local v4, "inOfs":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 761
    .local v6, "outArray":[B
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v22

    .line 762
    .local v22, "outPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v7, v2, v22

    .line 764
    .local v7, "outOfs":I
    if-eqz p3, :cond_4

    move-object/from16 v2, p0

    .line 765
    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v19

    .line 769
    .local v19, "n":I
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 770
    add-int v2, v22, v19

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 771
    return v19

    .end local v19    # "n":I
    :cond_4
    move-object/from16 v2, p0

    .line 767
    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v19

    .restart local v19    # "n":I
    goto :goto_0

    .line 772
    .end local v3    # "inArray":[B
    .end local v4    # "inOfs":I
    .end local v6    # "outArray":[B
    .end local v7    # "outOfs":I
    .end local v19    # "n":I
    .end local v22    # "outPos":I
    :cond_5
    if-nez v14, :cond_9

    if-eqz v15, :cond_9

    .line 773
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v22

    .line 774
    .restart local v22    # "outPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 775
    .restart local v6    # "outArray":[B
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v7, v2, v22

    .line 776
    .restart local v7    # "outOfs":I
    invoke-static {v5}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v2

    new-array v3, v2, [B

    .line 777
    .restart local v3    # "inArray":[B
    const/16 v25, 0x0

    .line 779
    .local v25, "total":I
    :cond_6
    array-length v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 780
    .local v11, "chunk":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 782
    if-nez p3, :cond_7

    if-eq v5, v11, :cond_8

    .line 783
    :cond_7
    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v19

    .line 787
    .restart local v19    # "n":I
    :goto_1
    add-int v25, v25, v19

    .line 788
    add-int v7, v7, v19

    .line 789
    sub-int/2addr v5, v11

    .line 790
    if-gtz v5, :cond_6

    .line 791
    add-int v2, v22, v25

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 792
    return v25

    .line 785
    .end local v19    # "n":I
    :cond_8
    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move-object v12, v6

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v19

    .restart local v19    # "n":I
    goto :goto_1

    .line 796
    .end local v3    # "inArray":[B
    .end local v6    # "outArray":[B
    .end local v7    # "outOfs":I
    .end local v11    # "chunk":I
    .end local v19    # "n":I
    .end local v22    # "outPos":I
    .end local v25    # "total":I
    :cond_9
    if-eqz v14, :cond_d

    .line 797
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 798
    .restart local v3    # "inArray":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v4, v2, v18

    .line 803
    .restart local v4    # "inOfs":I
    :goto_2
    invoke-static/range {v21 .. v21}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v2

    new-array v6, v2, [B

    .line 804
    .restart local v6    # "outArray":[B
    array-length v0, v6

    move/from16 v23, v0

    .line 805
    .local v23, "outSize":I
    const/16 v25, 0x0

    .line 806
    .restart local v25    # "total":I
    const/16 v24, 0x0

    .line 808
    .local v24, "resized":Z
    :cond_a
    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 809
    .restart local v11    # "chunk":I
    if-nez v14, :cond_b

    if-nez v24, :cond_b

    .line 810
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 811
    const/4 v4, 0x0

    .line 815
    :cond_b
    if-nez p3, :cond_c

    if-eq v5, v11, :cond_e

    .line 816
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v3

    move v10, v4

    move-object v12, v6

    :try_start_0
    invoke-virtual/range {v8 .. v13}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v19

    .line 820
    .restart local v19    # "n":I
    :goto_3
    const/16 v24, 0x0

    .line 821
    add-int/2addr v4, v11

    .line 822
    sub-int/2addr v5, v11

    .line 823
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v6, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    add-int v25, v25, v19

    .line 837
    .end local v19    # "n":I
    :goto_4
    if-gtz v5, :cond_a

    .line 838
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 839
    return v25

    .line 800
    .end local v3    # "inArray":[B
    .end local v4    # "inOfs":I
    .end local v6    # "outArray":[B
    .end local v11    # "chunk":I
    .end local v23    # "outSize":I
    .end local v24    # "resized":Z
    .end local v25    # "total":I
    :cond_d
    invoke-static {v5}, Ljavax/crypto/CipherSpi;->getTempArraySize(I)I

    move-result v2

    new-array v3, v2, [B

    .line 801
    .restart local v3    # "inArray":[B
    const/4 v4, 0x0

    .restart local v4    # "inOfs":I
    goto :goto_2

    .line 818
    .restart local v6    # "outArray":[B
    .restart local v11    # "chunk":I
    .restart local v23    # "outSize":I
    .restart local v24    # "resized":Z
    .restart local v25    # "total":I
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

    .restart local v19    # "n":I
    goto :goto_3

    .line 825
    .end local v19    # "n":I
    :catch_0
    move-exception v16

    .line 826
    .local v16, "e":Ljavax/crypto/ShortBufferException;
    if-eqz v24, :cond_f

    .line 829
    new-instance v2, Ljava/security/ProviderException;

    .line 830
    const-string/jumbo v8, "Could not determine buffer size"

    .line 829
    invoke-direct {v2, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/security/ProviderException;

    throw v2

    .line 833
    :cond_f
    const/16 v24, 0x1

    .line 834
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v20

    .line 835
    .local v20, "newOut":I
    move/from16 v0, v20

    new-array v6, v0, [B

    goto :goto_4
.end method

.method static getTempArraySize(I)I
    .locals 1
    .param p0, "totalSize"    # I

    .prologue
    .line 728
    const/16 v0, 0x1000

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 721
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
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 926
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
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 908
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 546
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v2}, Ljavax/crypto/CipherSpi;->bufferCrypt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 550
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/security/ProviderException;

    const-string/jumbo v3, "Internal error in update()"

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 547
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    .line 549
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
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
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 987
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 988
    const-string/jumbo v1, "The underlying Cipher implementation does not support this method"

    .line 987
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdateAAD([BII)V
    .locals 2
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 954
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 955
    const-string/jumbo v1, "The underlying Cipher implementation does not support this method"

    .line 954
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 870
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
