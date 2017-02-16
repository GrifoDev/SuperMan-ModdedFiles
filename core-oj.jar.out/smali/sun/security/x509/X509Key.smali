.class public Lsun/security/x509/X509Key;
.super Ljava/lang/Object;
.source "X509Key.java"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = -0x4a5fe2419b658d5aL


# instance fields
.field protected algid:Lsun/security/x509/AlgorithmId;

.field private bitStringKey:Lsun/security/util/BitArray;

.field protected encodedKey:[B

.field protected key:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private unusedBits:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/X509Key;->unusedBits:I

    .line 86
    iput-object v1, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 96
    return-void
.end method

.method private constructor <init>(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V
    .locals 2
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/X509Key;->unusedBits:I

    .line 86
    iput-object v1, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 105
    iput-object p1, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 106
    invoke-virtual {p0, p2}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    .line 107
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->encode()[B

    .line 104
    return-void
.end method

.method static buildX509Key(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)Ljava/security/PublicKey;
    .locals 19
    .param p0, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p1, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v14, Lsun/security/util/DerOutputStream;

    invoke-direct {v14}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 214
    .local v14, "x509EncodedKeyStream":Lsun/security/util/DerOutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v14, v0, v1}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    .line 216
    new-instance v15, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v14}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 220
    .local v15, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v11

    .line 223
    .local v11, "keyFac":Ljava/security/KeyFactory;
    invoke-virtual {v11, v15}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    return-object v16

    .line 226
    .end local v11    # "keyFac":Ljava/security/KeyFactory;
    :catch_0
    move-exception v8

    .line 227
    .local v8, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v16, Ljava/security/InvalidKeyException;

    invoke-virtual {v8}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v16

    .line 224
    .end local v8    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v7

    .line 233
    .local v7, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v3, ""

    .line 239
    .local v3, "classname":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v16, "SUN"

    invoke-static/range {v16 .. v16}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v13

    .line 240
    .local v13, "sunProvider":Ljava/security/Provider;
    if-nez v13, :cond_1

    .line 241
    new-instance v16, Ljava/lang/InstantiationException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/InstantiationException;-><init>()V

    throw v16
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5

    .line 270
    .end local v13    # "sunProvider":Ljava/security/Provider;
    :catch_2
    move-exception v4

    .line 277
    :cond_0
    :goto_0
    new-instance v12, Lsun/security/x509/X509Key;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lsun/security/x509/X509Key;-><init>(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    .line 278
    .local v12, "result":Lsun/security/x509/X509Key;
    return-object v12

    .line 242
    .end local v12    # "result":Lsun/security/x509/X509Key;
    .restart local v13    # "sunProvider":Ljava/security/Provider;
    :cond_1
    :try_start_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "PublicKey.X.509."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 243
    invoke-virtual/range {p0 .. p0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v17

    .line 242
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    if-nez v3, :cond_2

    .line 245
    new-instance v16, Ljava/lang/InstantiationException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/InstantiationException;-><init>()V

    throw v16
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5

    .line 271
    .end local v13    # "sunProvider":Ljava/security/Provider;
    :catch_3
    move-exception v6

    .local v6, "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 248
    .end local v6    # "e":Ljava/lang/InstantiationException;
    .restart local v13    # "sunProvider":Ljava/security/Provider;
    :cond_2
    const/4 v10, 0x0

    .line 250
    .local v10, "keyClass":Ljava/lang/Class;
    :try_start_3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v10

    .line 258
    .end local v10    # "keyClass":Ljava/lang/Class;
    :cond_3
    :goto_1
    const/4 v9, 0x0

    .line 261
    .local v9, "inst":Ljava/lang/Object;
    if-eqz v10, :cond_4

    .line 262
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 263
    .end local v9    # "inst":Ljava/lang/Object;
    :cond_4
    instance-of v0, v9, Lsun/security/x509/X509Key;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 264
    move-object v0, v9

    check-cast v0, Lsun/security/x509/X509Key;

    move-object v12, v0

    .line 265
    .restart local v12    # "result":Lsun/security/x509/X509Key;
    move-object/from16 v0, p0

    iput-object v0, v12, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 266
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    .line 267
    invoke-virtual {v12}, Lsun/security/x509/X509Key;->parseKeyBits()V

    .line 268
    return-object v12

    .line 251
    .end local v12    # "result":Lsun/security/x509/X509Key;
    .restart local v10    # "keyClass":Ljava/lang/Class;
    :catch_4
    move-exception v4

    .line 252
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 253
    .local v2, "cl":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_3

    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v10

    .local v10, "keyClass":Ljava/lang/Class;
    goto :goto_1

    .line 272
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v10    # "keyClass":Ljava/lang/Class;
    .end local v13    # "sunProvider":Ljava/security/Provider;
    :catch_5
    move-exception v5

    .line 274
    .local v5, "e":Ljava/lang/IllegalAccessException;
    new-instance v16, Ljava/io/IOException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " [internal error]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method static encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V
    .locals 2
    .param p0, "out"    # Lsun/security/util/DerOutputStream;
    .param p1, "algid"    # Lsun/security/x509/AlgorithmId;
    .param p2, "key"    # Lsun/security/util/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 473
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    invoke-virtual {p1, v0}, Lsun/security/x509/AlgorithmId;->encode(Lsun/security/util/DerOutputStream;)V

    .line 474
    invoke-virtual {v0, p2}, Lsun/security/util/DerOutputStream;->putUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 475
    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 471
    return-void
.end method

.method public static parse(Lsun/security/util/DerValue;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "in"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-byte v3, p0, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_0

    .line 166
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "corrupt subject key"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    :cond_0
    iget-object v3, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v0

    .line 171
    .local v0, "algorithm":Lsun/security/x509/AlgorithmId;
    :try_start_0
    iget-object v3, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v3

    .line 170
    invoke-static {v0, v3}, Lsun/security/x509/X509Key;->buildX509Key(Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 177
    .local v2, "subjectKey":Ljava/security/PublicKey;
    iget-object v3, p0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "excess subject key"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    .end local v2    # "subjectKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subject key, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 179
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    .restart local v2    # "subjectKey":Ljava/security/PublicKey;
    :cond_1
    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/x509/X509Key;->decode(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 423
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deserialized key is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 424
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 410
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 386
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 387
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "invalid key format"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v1    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 398
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 389
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "val":Lsun/security/util/DerValue;
    :cond_0
    :try_start_1
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-static {v2}, Lsun/security/x509/AlgorithmId;->parse(Lsun/security/util/DerValue;)Lsun/security/x509/AlgorithmId;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 390
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/security/x509/X509Key;->setKey(Lsun/security/util/BitArray;)V

    .line 391
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->parseKeyBits()V

    .line 392
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string/jumbo v3, "excess key data"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 380
    :cond_1
    return-void
.end method

.method public decode([B)V
    .locals 1
    .param p1, "encodedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 403
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lsun/security/x509/X509Key;->decode(Ljava/io/InputStream;)V

    .line 402
    return-void
.end method

.method public final encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getKey()Lsun/security/util/BitArray;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;Lsun/security/x509/AlgorithmId;Lsun/security/util/BitArray;)V

    .line 298
    return-void
.end method

.method public encode()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 429
    if-ne p0, p1, :cond_0

    .line 430
    const/4 v3, 0x1

    return v3

    .line 432
    :cond_0
    instance-of v3, p1, Ljava/security/Key;

    if-nez v3, :cond_1

    .line 433
    return v4

    .line 436
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v2

    .line 438
    .local v2, "thisEncoded":[B
    instance-of v3, p1, Lsun/security/x509/X509Key;

    if-eqz v3, :cond_2

    .line 439
    check-cast p1, Lsun/security/x509/X509Key;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v1

    .line 443
    .local v1, "otherEncoded":[B
    :goto_0
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    .line 441
    .end local v1    # "otherEncoded":[B
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    check-cast p1, Ljava/security/Key;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "otherEncoded":[B
    goto :goto_0

    .line 444
    .end local v1    # "otherEncoded":[B
    .end local v2    # "thisEncoded":[B
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/security/InvalidKeyException;
    return v4
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v0}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmId()Lsun/security/x509/AlgorithmId;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 308
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 309
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/security/InvalidKeyException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getEncodedInternal()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v1, p0, Lsun/security/x509/X509Key;->encodedKey:[B

    .line 317
    .local v1, "encoded":[B
    if-nez v1, :cond_0

    .line 319
    :try_start_0
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 320
    .local v2, "out":Lsun/security/util/DerOutputStream;
    invoke-virtual {p0, v2}, Lsun/security/x509/X509Key;->encode(Lsun/security/util/DerOutputStream;)V

    .line 321
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 326
    iput-object v1, p0, Lsun/security/x509/X509Key;->encodedKey:[B

    .line 328
    .end local v2    # "out":Lsun/security/util/DerOutputStream;
    :cond_0
    return-object v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 324
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    const-string/jumbo v0, "X.509"

    return-object v0
.end method

.method protected getKey()Lsun/security/util/BitArray;
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lsun/security/util/BitArray;

    .line 140
    iget-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lsun/security/x509/X509Key;->unusedBits:I

    sub-int/2addr v1, v2

    .line 141
    iget-object v2, p0, Lsun/security/x509/X509Key;->key:[B

    .line 139
    invoke-direct {v0, v1, v2}, Lsun/security/util/BitArray;-><init>(I[B)V

    iput-object v0, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 143
    iget-object v0, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    invoke-virtual {v0}, Lsun/security/util/BitArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/BitArray;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 455
    :try_start_0
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->getEncodedInternal()[B

    move-result-object v0

    .line 456
    .local v0, "b1":[B
    array-length v3, v0

    .line 457
    .local v3, "r":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 458
    aget-byte v4, v0, v2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v4, v4, 0x25

    add-int/2addr v3, v4

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 460
    :cond_0
    return v3

    .line 461
    .end local v0    # "b1":[B
    .end local v2    # "i":I
    .end local v3    # "r":I
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/security/InvalidKeyException;
    const/4 v4, 0x0

    return v4
.end method

.method protected parseKeyBits()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lsun/security/x509/X509Key;->encode()[B

    .line 196
    return-void
.end method

.method protected setKey(Lsun/security/util/BitArray;)V
    .locals 3
    .param p1, "key"    # Lsun/security/util/BitArray;

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p1}, Lsun/security/util/BitArray;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/BitArray;

    iput-object v1, p0, Lsun/security/x509/X509Key;->bitStringKey:Lsun/security/util/BitArray;

    .line 120
    invoke-virtual {p1}, Lsun/security/util/BitArray;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/X509Key;->key:[B

    .line 121
    invoke-virtual {p1}, Lsun/security/util/BitArray;->length()I

    move-result v1

    rem-int/lit8 v0, v1, 0x8

    .line 123
    .local v0, "remaining":I
    if-nez v0, :cond_0

    move v1, v2

    .line 122
    :goto_0
    iput v1, p0, Lsun/security/x509/X509Key;->unusedBits:I

    .line 113
    return-void

    .line 123
    :cond_0
    rsub-int/lit8 v1, v0, 0x8

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 352
    new-instance v0, Lsun/misc/HexDumpEncoder;

    invoke-direct {v0}, Lsun/misc/HexDumpEncoder;-><init>()V

    .line 354
    .local v0, "encoder":Lsun/misc/HexDumpEncoder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "algorithm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/X509Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v2}, Lsun/security/x509/AlgorithmId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 355
    const-string/jumbo v2, ", unparsed keybits = \n"

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 355
    iget-object v2, p0, Lsun/security/x509/X509Key;->key:[B

    invoke-virtual {v0, v2}, Lsun/misc/HexDumpEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
