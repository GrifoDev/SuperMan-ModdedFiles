.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;
.super Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;
.source "NTLMType3Message.java"


# static fields
.field private static final MAC_ARRAY_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "NTLMType3Message"


# instance fields
.field private domain:Ljava/lang/String;

.field private lmCompatibility:I

.field private lmResponse:[B

.field private ntResponse:[B

.field private password:Ljava/lang/String;

.field private randomBytesGenerator:Ljava/security/SecureRandom;

.field private serverChallenge:[B

.field private targetInformation:[B

.field private username:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->workstation:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->targetInformation:[B

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->workstation:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->targetInformation:[B

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    iput p8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmCompatibility:I

    return-void
.end method

.method private createDESKey([BI)Ljava/security/Key;
    .locals 5

    const/4 v3, 0x7

    const/4 v4, 0x0

    new-array v1, v3, [B

    invoke-static {p1, p2, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v3, 0x8

    new-array v2, v3, [B

    aget-byte v3, v1, v4

    aput-byte v3, v2, v4

    const/4 v0, 0x1

    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, v1, v3

    array-length v4, v2

    sub-int/2addr v4, v0

    shl-int/2addr v3, v4

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    ushr-int/2addr v4, v0

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x6

    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->processParityForBytes([B)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "DES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method private createMacAndDigest([B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v8, 0x40

    const/4 v7, 0x0

    new-array v2, v8, [B

    new-array v4, v8, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_0

    const/16 v5, 0x36

    aput-byte v5, v2, v1

    const/16 v5, 0x5c

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v5, p2

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_1

    aget-byte v5, v2, v1

    aget-byte v6, p2, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    aget-byte v5, v4, v1

    aget-byte v6, p2, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    array-length v5, p1

    add-int/lit8 v5, v5, 0x40

    new-array v0, v5, [B

    invoke-static {v2, v7, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, p1

    invoke-static {p1, v7, v0, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    array-length v5, p1

    add-int/lit8 v5, v5, 0x40

    new-array v0, v5, [B

    invoke-static {v4, v7, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, p1

    invoke-static {p1, v7, v0, v8, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    return-object v5
.end method

.method private createType3Message()[B
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    :cond_0
    const/16 v18, 0x0

    return-object v18

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    const/16 v18, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->isFlagSet(I)Z

    move-result v18

    if-eqz v18, :cond_5

    const-string/jumbo v8, "UTF-16LE"

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->workstation:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->workstation:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    :cond_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string/jumbo v18, "Cp850"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    array-length v15, v14

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v9, v0

    add-int/lit8 v18, v5, 0x40

    add-int v18, v18, v15

    add-int v18, v18, v17

    add-int v18, v18, v9

    add-int v18, v18, v10

    add-int/lit8 v18, v18, 0x0

    move/from16 v0, v18

    new-array v13, v0, [B

    sget-object v18, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->NTLM_HEADER_BYTES:[B

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v18, 0x8

    const/16 v19, 0x3

    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v13, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    const/16 v11, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    move-object/from16 v18, v0

    const/16 v19, 0xc

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v13, v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/lit8 v11, v9, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    move-object/from16 v18, v0

    const/16 v19, 0x14

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v13, v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v11, v10

    const/16 v18, 0x1c

    move/from16 v0, v18

    invoke-static {v13, v0, v11, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v11, v5

    const/16 v18, 0x24

    move/from16 v0, v18

    invoke-static {v13, v0, v11, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int/2addr v11, v15

    const/16 v18, 0x2c

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v13, v0, v11, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    add-int v11, v11, v17

    const/16 v18, 0x34

    move/from16 v0, v18

    invoke-static {v13, v0, v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setSecurityDataAndAttributes([BII[B)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->getFlags()I

    move-result v18

    const/16 v19, 0x3c

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v13, v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->setUnsignedValue([BIII)V

    return-object v13

    :cond_5
    const-string/jumbo v8, "Cp850"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v6

    :goto_1
    const/16 v18, 0x0

    return-object v18

    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private getLMResponse(Ljava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmHash(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method private getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-16LE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMacAndDigest([B[B)[B

    move-result-object v0

    invoke-direct {p0, v0, p5, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmv2Response([B[B[B)[B

    move-result-object v2

    return-object v2
.end method

.method private getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0, p3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    new-array v2, v5, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse([B[B)[B

    move-result-object v3

    return-object v3
.end method

.method private getNTLMResponse(Ljava/lang/String;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse([B[B)[B

    move-result-object v1

    return-object v1
.end method

.method private getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v14, "UTF-16LE"

    invoke-virtual {v9, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntlmHash(Ljava/lang/String;)[B

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMacAndDigest([B[B)[B

    move-result-object v8

    const/4 v14, 0x4

    new-array v10, v14, [B

    fill-array-data v10, :array_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v14, 0x10f1e78a400L

    add-long/2addr v2, v14

    const-wide/16 v14, 0x2710

    mul-long/2addr v2, v14

    const/16 v14, 0x8

    new-array v11, v14, [B

    const/4 v4, 0x0

    :goto_0
    const/16 v14, 0x8

    if-ge v4, v14, :cond_0

    long-to-int v14, v2

    int-to-byte v14, v14

    aput-byte v14, v11, v4

    const/16 v14, 0x8

    ushr-long/2addr v2, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v14, v11

    move-object/from16 v0, p6

    array-length v15, v0

    add-int/2addr v14, v15

    move-object/from16 v0, p4

    array-length v15, v0

    add-int/2addr v14, v15

    add-int/lit8 v12, v14, 0x10

    new-array v13, v12, [B

    const/4 v5, 0x0

    :goto_1
    const/16 v14, 0x8

    if-ge v5, v14, :cond_2

    const/4 v14, 0x4

    if-ge v5, v14, :cond_1

    aget-byte v14, v10, v5

    aput-byte v14, v13, v5

    add-int/lit8 v14, v5, 0x4

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    add-int/lit8 v14, v5, 0x18

    const/4 v15, 0x0

    aput-byte v15, v13, v14

    :cond_1
    add-int/lit8 v14, v5, 0x8

    aget-byte v15, v11, v5

    aput-byte v15, v13, v14

    add-int/lit8 v14, v5, 0x10

    aget-byte v15, p6, v5

    aput-byte v15, v13, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p4

    array-length v14, v0

    const/4 v15, 0x0

    const/16 v16, 0x1c

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-static {v0, v15, v13, v1, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p4

    array-length v14, v0

    add-int/lit8 v7, v14, 0x1c

    move v6, v7

    :goto_2
    add-int/lit8 v14, v7, 0x4

    if-ge v6, v14, :cond_3

    const/4 v14, 0x0

    aput-byte v14, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v8, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmv2Response([B[B[B)[B

    move-result-object v14

    return-object v14

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private lmHash(Ljava/lang/String;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Cp850"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    array-length v10, v9

    const/16 v11, 0xe

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v10, 0xe

    new-array v3, v10, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v10, 0x0

    invoke-direct {p0, v3, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createDESKey([BI)Ljava/security/Key;

    move-result-object v7

    const/4 v10, 0x7

    invoke-direct {p0, v3, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createDESKey([BI)Ljava/security/Key;

    move-result-object v2

    const-string/jumbo v10, "KGS!@#$%"

    const-string/jumbo v11, "US-ASCII"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string/jumbo v10, "DES/ECB/NoPadding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const/16 v10, 0x10

    new-array v5, v10, [B

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v6, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/16 v12, 0x8

    invoke-static {v1, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v5
.end method

.method private lmResponse([B[B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v9, 0x15

    new-array v3, v9, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-static {p1, v9, v3, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v9, 0x0

    invoke-direct {p0, v3, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createDESKey([BI)Ljava/security/Key;

    move-result-object v5

    const/4 v9, 0x7

    invoke-direct {p0, v3, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createDESKey([BI)Ljava/security/Key;

    move-result-object v7

    const/16 v9, 0xe

    invoke-direct {p0, v3, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createDESKey([BI)Ljava/security/Key;

    move-result-object v1

    const-string/jumbo v9, "DES/ECB/NoPadding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    const/16 v9, 0x18

    new-array v4, v9, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v6, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x8

    invoke-static {v8, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/16 v11, 0x8

    invoke-static {v2, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v4
.end method

.method private lmv2Response([B[B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    array-length v3, p3

    array-length v4, p2

    add-int/2addr v3, v4

    new-array v0, v3, [B

    array-length v3, p3

    invoke-static {p3, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, p3

    array-length v4, p2

    invoke-static {p2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createMacAndDigest([B[B)[B

    move-result-object v2

    array-length v3, v2

    array-length v4, p2

    add-int/2addr v3, v4

    new-array v1, v3, [B

    array-length v3, v2

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v2

    array-length v4, p2

    invoke-static {p2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method

.method private ntlmHash(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v2, "UTF-16LE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;

    invoke-direct {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->update([B)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->digest()[B

    move-result-object v2

    return-object v2
.end method

.method private processParityForBytes([B)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    aget-byte v0, p1, v1

    ushr-int/lit8 v4, v0, 0x7

    ushr-int/lit8 v5, v0, 0x6

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x5

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x4

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x3

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x2

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x1

    xor-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_1

    aget-byte v4, p1, v1

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    aget-byte v4, p1, v1

    and-int/lit8 v4, v4, -0x2

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method protected createMessageString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    if-eqz v0, :cond_0

    const/4 v14, 0x0

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmCompatibility:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const/high16 v0, 0x80000

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x18

    new-array v5, v0, [B

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v0, v5

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v5, v1, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v0, v1, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    iput-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    :goto_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createType3Message()[B

    move-result-object v14

    if-nez v14, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->getLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    array-length v0, v14

    const/4 v1, 0x0

    invoke-static {v14, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->encode([BII)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createType3Message()[B

    move-result-object v14

    if-nez v14, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, v14

    const/4 v1, 0x0

    invoke-static {v14, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->encode([BII)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->targetInformation:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    return-object v0

    :cond_6
    const/16 v0, 0x8

    new-array v5, v0, [B

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->randomBytesGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v0, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->lmResponse:[B

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->domain:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->username:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->password:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->targetInformation:[B

    iget-object v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->serverChallenge:[B

    move-object v6, p0

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->ntResponse:[B

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMType3Message;->createType3Message()[B

    move-result-object v14

    if-nez v14, :cond_7

    const/4 v0, 0x0

    return-object v0

    :cond_7
    array-length v0, v14

    const/4 v1, 0x0

    invoke-static {v14, v1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMUtils;->encode([BII)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected processMessageString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
