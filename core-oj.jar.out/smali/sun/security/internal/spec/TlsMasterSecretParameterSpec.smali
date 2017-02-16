.class public Lsun/security/internal/spec/TlsMasterSecretParameterSpec;
.super Ljava/lang/Object;
.source "TlsMasterSecretParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final clientRandom:[B

.field private final majorVersion:I

.field private final minorVersion:I

.field private final premasterSecret:Ljavax/crypto/SecretKey;

.field private final prfBlockSize:I

.field private final prfHashAlg:Ljava/lang/String;

.field private final prfHashLength:I

.field private final serverRandom:[B


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;II[B[BLjava/lang/String;II)V
    .locals 2
    .param p1, "premasterSecret"    # Ljavax/crypto/SecretKey;
    .param p2, "majorVersion"    # I
    .param p3, "minorVersion"    # I
    .param p4, "clientRandom"    # [B
    .param p5, "serverRandom"    # [B
    .param p6, "prfHashAlg"    # Ljava/lang/String;
    .param p7, "prfHashLength"    # I
    .param p8, "prfBlockSize"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "premasterSecret must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->premasterSecret:Ljavax/crypto/SecretKey;

    .line 87
    invoke-static {p2}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->majorVersion:I

    .line 88
    invoke-static {p3}, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->checkVersion(I)I

    move-result v0

    iput v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->minorVersion:I

    .line 89
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->clientRandom:[B

    .line 90
    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->serverRandom:[B

    .line 91
    iput-object p6, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashAlg:Ljava/lang/String;

    .line 92
    iput p7, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashLength:I

    .line 93
    iput p8, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfBlockSize:I

    .line 82
    return-void
.end method

.method static checkVersion(I)I
    .locals 2
    .param p0, "version"    # I

    .prologue
    .line 97
    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 99
    const-string/jumbo v1, "Version must be between 0 and 255"

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    return p0
.end method


# virtual methods
.method public getClientRandom()[B
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->clientRandom:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->minorVersion:I

    return v0
.end method

.method public getPRFBlockSize()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfBlockSize:I

    return v0
.end method

.method public getPRFHashAlg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getPRFHashLength()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->prfHashLength:I

    return v0
.end method

.method public getPremasterSecret()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->premasterSecret:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getServerRandom()[B
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lsun/security/internal/spec/TlsMasterSecretParameterSpec;->serverRandom:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
