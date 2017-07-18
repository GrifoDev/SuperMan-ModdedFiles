.class final Ljavax/crypto/NullCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "NullCipherSpi.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 1

    invoke-virtual/range {p0 .. p5}, Ljavax/crypto/NullCipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/NullCipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected engineGetIV()[B
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [B

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0

    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 0

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    return-void
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return p3
.end method

.method protected engineUpdate([BII)[B
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method
