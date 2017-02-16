.class public Ljavax/crypto/SealedObject;
.super Ljava/lang/Object;
.source "SealedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x3e363da6c3b75470L


# instance fields
.field protected encodedParams:[B

.field private encryptedContent:[B

.field private paramsAlg:Ljava/lang/String;

.field private sealAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V
    .locals 5
    .param p1, "object"    # Ljava/io/Serializable;
    .param p2, "c"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 110
    iput-object v4, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 117
    iput-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 127
    iput-object v4, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 156
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    .local v1, "b":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    .local v0, "a":Ljava/io/ObjectOutput;
    :try_start_0
    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 162
    invoke-interface {v0}, Ljava/io/ObjectOutput;->flush()V

    .line 163
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 165
    .local v2, "content":[B
    invoke-interface {v0}, Ljava/io/ObjectOutput;->close()V

    .line 172
    :try_start_1
    invoke-virtual {p2, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    :goto_0
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 181
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 182
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 186
    :cond_0
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 149
    return-void

    .line 164
    .end local v2    # "content":[B
    :catchall_0
    move-exception v4

    .line 165
    invoke-interface {v0}, Ljava/io/ObjectOutput;->close()V

    .line 164
    throw v4

    .line 174
    .restart local v2    # "content":[B
    :catch_0
    move-exception v3

    .local v3, "ex":Ljavax/crypto/BadPaddingException;
    goto :goto_0
.end method

.method protected constructor <init>(Ljavax/crypto/SealedObject;)V
    .locals 2
    .param p1, "so"    # Ljavax/crypto/SealedObject;

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v1, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 110
    iput-object v1, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 196
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 197
    iget-object v0, p1, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 198
    iget-object v0, p1, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 199
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 195
    :goto_0
    return-void

    .line 202
    :cond_0
    iput-object v1, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 452
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 454
    :cond_0
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 449
    :cond_1
    return-void
.end method

.method private unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v8, 0x0

    .line 373
    .local v8, "params":Ljava/security/AlgorithmParameters;
    iget-object v9, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    if-eqz v9, :cond_0

    .line 375
    if-eqz p2, :cond_1

    .line 376
    :try_start_0
    iget-object v9, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v9, p2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 389
    .local v8, "params":Ljava/security/AlgorithmParameters;
    :goto_0
    iget-object v9, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v8, v9}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 397
    .end local v8    # "params":Ljava/security/AlgorithmParameters;
    :cond_0
    if-eqz p2, :cond_3

    .line 398
    :try_start_1
    iget-object v9, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v9, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 414
    .local v2, "c":Ljavax/crypto/Cipher;
    :goto_1
    if-eqz v8, :cond_5

    .line 415
    const/4 v9, 0x2

    :try_start_2
    invoke-virtual {v2, v9, p1, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_3

    .line 427
    :goto_2
    iget-object v9, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v2, v9}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 433
    .local v3, "content":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 434
    .local v1, "b":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljavax/crypto/extObjectInputStream;

    invoke-direct {v0, v1}, Ljavax/crypto/extObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 436
    .local v0, "a":Ljava/io/ObjectInput;
    :try_start_3
    invoke-interface {v0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 439
    .local v7, "obj":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    .line 437
    return-object v7

    .line 379
    .end local v0    # "a":Ljava/io/ObjectInput;
    .end local v1    # "b":Ljava/io/ByteArrayInputStream;
    .end local v2    # "c":Ljavax/crypto/Cipher;
    .end local v3    # "content":[B
    .end local v7    # "obj":Ljava/lang/Object;
    .local v8, "params":Ljava/security/AlgorithmParameters;
    :cond_1
    :try_start_4
    iget-object v9, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v9}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    :try_end_4
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v8

    .local v8, "params":Ljava/security/AlgorithmParameters;
    goto :goto_0

    .line 381
    .local v8, "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v5

    .line 382
    .local v5, "nspe":Ljava/security/NoSuchProviderException;
    if-nez p2, :cond_2

    .line 383
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 384
    const-string/jumbo v11, " not found"

    .line 383
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 386
    :cond_2
    new-instance v9, Ljava/security/NoSuchProviderException;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 400
    .end local v5    # "nspe":Ljava/security/NoSuchProviderException;
    .end local v8    # "params":Ljava/security/AlgorithmParameters;
    :cond_3
    :try_start_5
    iget-object v9, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    .restart local v2    # "c":Ljavax/crypto/Cipher;
    goto :goto_1

    .line 405
    .end local v2    # "c":Ljavax/crypto/Cipher;
    :catch_1
    move-exception v5

    .line 406
    .restart local v5    # "nspe":Ljava/security/NoSuchProviderException;
    if-nez p2, :cond_4

    .line 407
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " not found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 409
    :cond_4
    new-instance v9, Ljava/security/NoSuchProviderException;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 401
    .end local v5    # "nspe":Ljava/security/NoSuchProviderException;
    :catch_2
    move-exception v6

    .line 402
    .local v6, "nspe":Ljavax/crypto/NoSuchPaddingException;
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v10, "Padding that was used in sealing operation not available"

    invoke-direct {v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 417
    .end local v6    # "nspe":Ljavax/crypto/NoSuchPaddingException;
    .restart local v2    # "c":Ljavax/crypto/Cipher;
    :cond_5
    const/4 v9, 0x2

    :try_start_6
    invoke-virtual {v2, v9, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 418
    :catch_3
    move-exception v4

    .line 421
    .local v4, "iape":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 438
    .end local v4    # "iape":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v0    # "a":Ljava/io/ObjectInput;
    .restart local v1    # "b":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "content":[B
    :catchall_0
    move-exception v9

    .line 439
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    .line 438
    throw v9
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    return-object v0
.end method

.method public final getObject(Ljava/security/Key;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "key is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, v3}, Ljavax/crypto/SealedObject;->unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "bpe":Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    .end local v0    # "bpe":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    .line 260
    .local v1, "ibse":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    .end local v1    # "ibse":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v2

    .line 258
    .local v2, "nspe":Ljava/security/NoSuchProviderException;
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v4, "algorithm not found"

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final getObject(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "key is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 351
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "missing provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 355
    :cond_2
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljavax/crypto/SealedObject;->unseal(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "bpe":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 356
    .end local v0    # "bpe":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v1

    .line 357
    .local v1, "ibse":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;
    .locals 5
    .param p1, "c"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {p1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 301
    .local v2, "content":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 302
    .local v1, "b":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljavax/crypto/extObjectInputStream;

    invoke-direct {v0, v1}, Ljavax/crypto/extObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 304
    .local v0, "a":Ljava/io/ObjectInput;
    :try_start_0
    invoke-interface {v0}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 307
    .local v3, "obj":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    .line 305
    return-object v3

    .line 306
    .end local v3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    .line 307
    invoke-interface {v0}, Ljava/io/ObjectInput;->close()V

    .line 306
    throw v4
.end method
