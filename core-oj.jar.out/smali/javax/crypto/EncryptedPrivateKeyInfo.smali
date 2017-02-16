.class public Ljavax/crypto/EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;
.source "EncryptedPrivateKeyInfo.java"


# instance fields
.field private algid:Lsun/security/x509/AlgorithmId;

.field private encoded:[B

.field private encryptedData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "algName"    # Ljava/lang/String;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the algName parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-static {p1}, Lsun/security/x509/AlgorithmId;->get(Ljava/lang/String;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 139
    if-nez p2, :cond_1

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "the encryptedData parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    array-length v0, p2

    if-nez v0, :cond_2

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the encryptedData parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 150
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmParameters;[B)V
    .locals 2
    .param p1, "algParams"    # Ljava/security/AlgorithmParameters;
    .param p2, "encryptedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "algParams must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    invoke-static {p1}, Lsun/security/x509/AlgorithmId;->get(Ljava/security/AlgorithmParameters;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 180
    if-nez p2, :cond_1

    .line 181
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encryptedData must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    array-length v0, p2

    if-nez v0, :cond_2

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the encryptedData parameter must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 191
    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 173
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "the encoded parameter must be non-null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 84
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 86
    .local v1, "val":Lsun/security/util/DerValue;
    const/4 v2, 0x2

    new-array v0, v2, [Lsun/security/util/DerValue;

    .line 88
    .local v0, "seq":[Lsun/security/util/DerValue;
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v0, v3

    .line 89
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    aput-object v2, v0, v4

    .line 91
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "overrun, bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_1
    aget-object v2, v0, v3

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    .line 96
    aget-object v2, v0, v3

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "encryptionAlgorithm field overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_2
    aget-object v2, v0, v4

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 101
    aget-object v2, v0, v4

    iget-object v2, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "encryptedData field overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_3
    return-void
.end method

.method private static checkPKCS8Encoding([B)V
    .locals 8
    .param p0, "encodedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 429
    new-instance v1, Lsun/security/util/DerInputStream;

    invoke-direct {v1, p0}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 430
    .local v1, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v1, v4}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 432
    .local v2, "values":[Lsun/security/util/DerValue;
    array-length v3, v2

    packed-switch v3, :pswitch_data_0

    .line 445
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "invalid key encoding"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    :pswitch_0
    aget-object v3, v2, v4

    const-string/jumbo v4, "attributes"

    const/16 v5, -0x80

    invoke-static {v3, v5, v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    .line 436
    :pswitch_1
    aget-object v3, v2, v6

    const-string/jumbo v4, "version"

    invoke-static {v3, v7, v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    .line 437
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    .line 438
    .local v0, "algid":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    .line 439
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    .line 442
    :cond_0
    aget-object v3, v2, v7

    const-string/jumbo v4, "privateKey"

    const/4 v5, 0x4

    invoke-static {v3, v5, v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V

    .line 428
    return-void

    .line 432
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkTag(Lsun/security/util/DerValue;BLjava/lang/String;)V
    .locals 3
    .param p0, "val"    # Lsun/security/util/DerValue;
    .param p1, "tag"    # B
    .param p2, "valName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p0}, Lsun/security/util/DerValue;->getTag()B

    move-result v0

    if-eq v0, p1, :cond_0

    .line 422
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid key encoding - wrong tag for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    return-void
.end method

.method private getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 8
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 280
    .local v1, "encoded":[B
    if-nez p2, :cond_0

    .line 282
    :try_start_0
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v6}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 286
    .local v0, "c":Ljavax/crypto/Cipher;
    :goto_0
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v6}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7, p1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 287
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 288
    .local v1, "encoded":[B
    invoke-static {v1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkPKCS8Encoding([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v6

    .line 284
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .local v1, "encoded":[B
    :cond_0
    :try_start_1
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v6}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .restart local v0    # "c":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 297
    .end local v0    # "c":Ljavax/crypto/Cipher;
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v4

    .line 298
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/InvalidKeyException;

    .line 299
    const-string/jumbo v6, "Cannot retrieve the PKCS8EncodedKeySpec"

    .line 298
    invoke-direct {v3, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 300
    .local v3, "ike":Ljava/security/InvalidKeyException;
    invoke-virtual {v3, v4}, Ljava/security/InvalidKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 301
    throw v3

    .line 292
    .end local v3    # "ike":Ljava/security/InvalidKeyException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 293
    .local v2, "gse":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/InvalidKeyException;

    .line 294
    const-string/jumbo v6, "Cannot retrieve the PKCS8EncodedKeySpec"

    .line 293
    invoke-direct {v3, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 295
    .restart local v3    # "ike":Ljava/security/InvalidKeyException;
    invoke-virtual {v3, v2}, Ljava/security/InvalidKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 296
    throw v3

    .line 289
    .end local v2    # "gse":Ljava/security/GeneralSecurityException;
    .end local v3    # "ike":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v5

    .line 291
    .local v5, "nsae":Ljava/security/NoSuchAlgorithmException;
    throw v5
.end method


# virtual methods
.method public getAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlgParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    if-nez v2, :cond_0

    .line 403
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 404
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 407
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2, v1}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 410
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 413
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 414
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 416
    .end local v0    # "out":Lsun/security/util/DerOutputStream;
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    return-object v2
.end method

.method public getEncryptedData()[B
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getKeySpec(Ljava/security/Key;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 2
    .param p1, "decryptKey"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 323
    if-nez p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "decryptKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    invoke-direct {p0, p1, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object v0

    return-object v0
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/lang/String;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 4
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 351
    if-nez p1, :cond_0

    .line 352
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "decryptKey is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :cond_0
    if-nez p2, :cond_1

    .line 355
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "provider is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_1
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 358
    .local v0, "provider":Ljava/security/Provider;
    if-nez v0, :cond_2

    .line 359
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 360
    const-string/jumbo v3, " not found"

    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_2
    invoke-direct {p0, p1, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object v1

    return-object v1
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 2
    .param p1, "decryptKey"    # Ljava/security/Key;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 386
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "decryptKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    if-nez p2, :cond_1

    .line 389
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "provider is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_1
    invoke-direct {p0, p1, p2}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpecImpl(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object v0

    return-object v0
.end method

.method public getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 6
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "encoded":[B
    :try_start_0
    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {p1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 251
    .local v0, "encoded":[B
    invoke-static {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->checkPKCS8Encoding([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v5, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v5

    .line 264
    .end local v0    # "encoded":[B
    :catch_0
    move-exception v4

    .line 265
    .local v4, "ise":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    .line 267
    const-string/jumbo v5, "Cannot retrieve the PKCS8EncodedKeySpec"

    .line 265
    invoke-direct {v2, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 268
    .local v2, "ikse":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v2, v4}, Ljava/security/spec/InvalidKeySpecException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 269
    throw v2

    .line 258
    .end local v2    # "ikse":Ljava/security/spec/InvalidKeySpecException;
    .end local v4    # "ise":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v3

    .line 259
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    .line 261
    const-string/jumbo v5, "Cannot retrieve the PKCS8EncodedKeySpec"

    .line 259
    invoke-direct {v2, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v2    # "ikse":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v2, v3}, Ljava/security/spec/InvalidKeySpecException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 263
    throw v2

    .line 252
    .end local v2    # "ikse":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 253
    .local v1, "gse":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    .line 255
    const-string/jumbo v5, "Cannot retrieve the PKCS8EncodedKeySpec"

    .line 253
    invoke-direct {v2, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v2    # "ikse":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v2, v1}, Ljava/security/spec/InvalidKeySpecException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 257
    throw v2
.end method
