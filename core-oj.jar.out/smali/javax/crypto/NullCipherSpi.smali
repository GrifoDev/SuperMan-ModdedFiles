.class final Ljavax/crypto/NullCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "NullCipherSpi.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    .prologue
    .line 105
    invoke-virtual/range {p0 .. p5}, Ljavax/crypto/NullCipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/NullCipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method protected engineGetIV()[B
    .locals 2

    .prologue
    .line 61
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 62
    .local v0, "x":[B
    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 0
    .param p1, "inputLen"    # I

    .prologue
    .line 57
    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 77
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 69
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 73
    return-void
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 48
    return-void
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 0
    .param p1, "padding"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I

    .prologue
    .line 90
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 92
    return p3
.end method

.method protected engineUpdate([BII)[B
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_0

    return-object v1

    .line 82
    :cond_0
    new-array v0, p3, [B

    .line 83
    .local v0, "x":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 84
    return-object v0
.end method
