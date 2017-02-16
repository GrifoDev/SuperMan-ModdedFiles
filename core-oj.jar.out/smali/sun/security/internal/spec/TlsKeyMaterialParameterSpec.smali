.class public Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;
.super Ljava/lang/Object;
.source "TlsKeyMaterialParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cipherAlgorithm:Ljava/lang/String;

.field private final cipherKeyLength:I

.field private final clientRandom:[B

.field private final expandedCipherKeyLength:I

.field private final ivLength:I

.field private final macKeyLength:I

.field private final majorVersion:I

.field private final masterSecret:Ljavax/crypto/SecretKey;

.field private final minorVersion:I

.field private final prfBlockSize:I

.field private final prfHashAlg:Ljava/lang/String;

.field private final prfHashLength:I

.field private final serverRandom:[B


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;IIIILjava/lang/String;II)V
    .locals 2
    .param p1, "masterSecret"    # Ljavax/crypto/SecretKey;
    .param p2, "majorVersion"    # I
    .param p3, "minorVersion"    # I
    .param p4, "clientRandom"    # [B
    .param p5, "serverRandom"    # [B
    .param p6, "cipherAlgorithm"    # Ljava/lang/String;
    .param p7, "cipherKeyLength"    # I
    .param p8, "expandedCipherKeyLength"    # I
    .param p9, "ivLength"    # I
    .param p10, "macKeyLength"    # I
    .param p11, "prfHashAlg"    # Ljava/lang/String;
    .param p12, "prfHashLength"    # I
    .param p13, "prfBlockSize"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TlsMasterSecret"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a TLS master secret"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-nez p6, :cond_1

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 103
    :cond_1
    iput-object p1, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->masterSecret:Ljavax/crypto/SecretKey;

    .line 105
    invoke-static {p2}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    .line 104
    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->majorVersion:I

    .line 107
    invoke-static {p3}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    .line 106
    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->minorVersion:I

    .line 108
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->clientRandom:[B

    .line 109
    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->serverRandom:[B

    .line 110
    iput-object p6, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->cipherAlgorithm:Ljava/lang/String;

    .line 111
    invoke-static {p7}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->checkSign(I)I

    move-result v0

    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->cipherKeyLength:I

    .line 112
    invoke-static {p8}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->checkSign(I)I

    move-result v0

    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->expandedCipherKeyLength:I

    .line 113
    invoke-static {p9}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->checkSign(I)I

    move-result v0

    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->ivLength:I

    .line 114
    invoke-static {p10}, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->checkSign(I)I

    move-result v0

    iput v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->macKeyLength:I

    .line 115
    iput-object p11, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfHashAlg:Ljava/lang/String;

    .line 116
    iput p12, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfHashLength:I

    .line 117
    iput p13, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfBlockSize:I

    .line 96
    return-void
.end method

.method private static checkSign(I)I
    .locals 2
    .param p0, "k"    # I

    .prologue
    .line 121
    if-gez p0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    return p0
.end method


# virtual methods
.method public getCipherAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->cipherAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getCipherKeyLength()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->cipherKeyLength:I

    return v0
.end method

.method public getClientRandom()[B
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->clientRandom:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getExpandedCipherKeyLength()I
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->majorVersion:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->minorVersion:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 201
    const/4 v0, 0x0

    return v0

    .line 203
    :cond_0
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->expandedCipherKeyLength:I

    return v0
.end method

.method public getIvLength()I
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->majorVersion:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->minorVersion:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 218
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_0
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->ivLength:I

    return v0
.end method

.method public getMacKeyLength()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->macKeyLength:I

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->majorVersion:I

    return v0
.end method

.method public getMasterSecret()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->masterSecret:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->minorVersion:I

    return v0
.end method

.method public getPRFBlockSize()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfBlockSize:I

    return v0
.end method

.method public getPRFHashAlg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfHashAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getPRFHashLength()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->prfHashLength:I

    return v0
.end method

.method public getServerRandom()[B
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/internal/spec/TlsKeyMaterialParameterSpec;->serverRandom:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
