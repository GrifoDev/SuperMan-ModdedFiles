.class public final Lsun/security/ec/ECPrivateKeyImpl;
.super Lsun/security/pkcs/PKCS8Key;
.source "ECPrivateKeyImpl.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x13b1bfbb8cd8739L


# instance fields
.field private params:Ljava/security/spec/ECParameterSpec;

.field private s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V
    .locals 7
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "params"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lsun/security/pkcs/PKCS8Key;-><init>()V

    .line 83
    iput-object p1, p0, Lsun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    .line 84
    iput-object p2, p0, Lsun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    .line 86
    new-instance v4, Lsun/security/x509/AlgorithmId;

    .line 87
    sget-object v5, Lsun/security/x509/AlgorithmId;->EC_oid:Lsun/security/util/ObjectIdentifier;

    invoke-static {p2}, Lsun/security/ec/ECParameters;->getAlgorithmParameters(Ljava/security/spec/ECParameterSpec;)Ljava/security/AlgorithmParameters;

    move-result-object v6

    .line 86
    invoke-direct {v4, v5, v6}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;Ljava/security/AlgorithmParameters;)V

    iput-object v4, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    .line 89
    :try_start_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 90
    .local v1, "out":Lsun/security/util/DerOutputStream;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 91
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lsun/security/ec/ECParameters;->trimZeroes([B)[B

    move-result-object v2

    .line 92
    .local v2, "privBytes":[B
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putOctetString([B)V

    .line 94
    new-instance v3, Lsun/security/util/DerValue;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/16 v5, 0x30

    invoke-direct {v3, v5, v4}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 95
    .local v3, "val":Lsun/security/util/DerValue;
    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lsun/security/pkcs/PKCS8Key;->key:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-void

    .line 96
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v2    # "privBytes":[B
    .end local v3    # "val":Lsun/security/util/DerValue;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "exc":Ljava/io/IOException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lsun/security/pkcs/PKCS8Key;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS8Key;->decode([B)V

    .line 73
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "EC"

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lsun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    return-object v0
.end method

.method protected parseKeyBits()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 122
    :try_start_0
    new-instance v5, Lsun/security/util/DerInputStream;

    iget-object v9, p0, Lsun/security/pkcs/PKCS8Key;->key:[B

    invoke-direct {v5, v9}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 123
    .local v5, "in":Lsun/security/util/DerInputStream;
    invoke-virtual {v5}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    .line 124
    .local v2, "derValue":Lsun/security/util/DerValue;
    iget-byte v9, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v10, 0x30

    if-eq v9, v10, :cond_0

    .line 125
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Not a SEQUENCE"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    .end local v2    # "derValue":Lsun/security/util/DerValue;
    .end local v5    # "in":Lsun/security/util/DerInputStream;
    :catch_0
    move-exception v3

    .line 151
    .local v3, "e":Ljava/io/IOException;
    new-instance v9, Ljava/security/InvalidKeyException;

    const-string/jumbo v10, "Invalid EC private key"

    invoke-direct {v9, v10, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 127
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "derValue":Lsun/security/util/DerValue;
    .restart local v5    # "in":Lsun/security/util/DerInputStream;
    :cond_0
    :try_start_1
    iget-object v1, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 128
    .local v1, "data":Lsun/security/util/DerInputStream;
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getInteger()I

    move-result v8

    .line 129
    .local v8, "version":I
    if-eq v8, v11, :cond_1

    .line 130
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Version must be 1"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .end local v1    # "data":Lsun/security/util/DerInputStream;
    .end local v2    # "derValue":Lsun/security/util/DerValue;
    .end local v5    # "in":Lsun/security/util/DerInputStream;
    .end local v8    # "version":I
    :catch_1
    move-exception v4

    .line 153
    .local v4, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v9, Ljava/security/InvalidKeyException;

    const-string/jumbo v10, "Invalid EC private key"

    invoke-direct {v9, v10, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 132
    .end local v4    # "e":Ljava/security/spec/InvalidParameterSpecException;
    .restart local v1    # "data":Lsun/security/util/DerInputStream;
    .restart local v2    # "derValue":Lsun/security/util/DerValue;
    .restart local v5    # "in":Lsun/security/util/DerInputStream;
    .restart local v8    # "version":I
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v6

    .line 133
    .local v6, "privData":[B
    new-instance v9, Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-direct {v9, v10, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v9, p0, Lsun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    .line 134
    :cond_2
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v9

    if-eqz v9, :cond_3

    .line 135
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v7

    .line 136
    .local v7, "value":Lsun/security/util/DerValue;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v9

    if-nez v9, :cond_2

    .line 138
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v9

    if-nez v9, :cond_2

    .line 141
    new-instance v9, Ljava/security/InvalidKeyException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unexpected value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 144
    .end local v7    # "value":Lsun/security/util/DerValue;
    :cond_3
    iget-object v9, p0, Lsun/security/pkcs/PKCS8Key;->algid:Lsun/security/x509/AlgorithmId;

    invoke-virtual {v9}, Lsun/security/x509/AlgorithmId;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 145
    .local v0, "algParams":Ljava/security/AlgorithmParameters;
    if-nez v0, :cond_4

    .line 146
    new-instance v9, Ljava/security/InvalidKeyException;

    const-string/jumbo v10, "EC domain parameters must be encoded in the algorithm identifier"

    invoke-direct {v9, v10}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 149
    :cond_4
    const-class v9, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0, v9}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v9

    check-cast v9, Ljava/security/spec/ECParameterSpec;

    iput-object v9, p0, Lsun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sun EC private key, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    const-string/jumbo v1, " bits\n  private value:  "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lsun/security/ec/ECPrivateKeyImpl;->s:Ljava/math/BigInteger;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string/jumbo v1, "\n  parameters: "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lsun/security/ec/ECPrivateKeyImpl;->params:Ljava/security/spec/ECParameterSpec;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
